#!/bin/sh

# $1 delay time
# $2 ping count
# $3 host
# $4 period count
# $5 action reboot|wan

T=$(uci -q get network.wan.proto)
[ -z "$T" ] && exit 0
[ "x$T" = "xnone" ] && exit 0

UPTIME=$(awk '{printf "%d", $1}' /proc/uptime)
[ $UPTIME -le $1 ] && exit 0

date +"%Y-%m-%d %T" 2>&1 > /tmp/lite_watchdog_tt
ping -q -4 -w 10 -c $2 $3 > /tmp/lite_watchdog 2>/dev/null

PR=$(awk '/packets received/ {print $4}' /tmp/lite_watchdog)
[ -z "$PR" ] && PR=0
if [ "$PR" = "0" ]; then
	echo 0 >> /tmp/lite_watchdog_cnt
else
	echo 1 > /tmp/lite_watchdog_cnt
	exit 0
fi
CNT=$(wc -l < /tmp/lite_watchdog_cnt)
CNT=$((CNT-1))

if [ $CNT -ge $4 ]; then
	case "$5" in
		"reboot")
			[ -e /etc/lite_watchdog.user ] && env -i ACTION="reboot" /bin/sh /etc/lite_watchdog.user
			logger -t LITE-WATCHDOG "Reboot"
			reboot
			;;
		"wan")
			[ -e /etc/lite_watchdog.user ] && env -i ACTION="wan" /bin/sh /etc/lite_watchdog.user
			
			MODRES=$(uci -q get watchdog.@watchdog[0].modemrestart)
			if [ "$MODRES" == "1" ]; then
				CMD=$(uci -q get watchdog.@watchdog[0].restartcmd)
				PORT=$(uci -q get watchdog.@watchdog[0].set_port)
				logger -t LITE-WATCHDOG "Restart modem on port: \"$PORT\"."
				(sms_tool -d $PORT at "$CMD"; sleep 25) &
			fi

			WAN=$(uci -q get watchdog.@watchdog[0].iface)
			logger -t LITE-WATCHDOG "Restarting network interface: \"$WAN\"."
			(ifdown $WAN; sleep 5; ifup $WAN) &
			;;
	esac
fi

exit 0
