# luci-app-lite-watchdog

![GitHub release (latest by date)](https://img.shields.io/github/v/release/4IceG/luci-app-lite-watchdog?style=flat-square)
![GitHub stars](https://img.shields.io/github/stars/4IceG/luci-app-lite-watchdog?style=flat-square)
![GitHub forks](https://img.shields.io/github/forks/4IceG/luci-app-lite-watchdog?style=flat-square)
![GitHub All Releases](https://img.shields.io/github/downloads/4IceG/luci-app-lite-watchdog/total)

Luci-app-lite-watchdog is connection tester based on the method of testing pings to a given address.   
The connection monitor is a conversion of the monitor known from the easyconfig package.


``` bash
#Modem drivers are required for proper operation.
kmod-usb-serial kmod-usb-serial-option

#+DEPENDS:
sms-tool_2021-12-03-d38898f4-1

#The sms-tool package is not available in the OpenWrt core repository. 
#Sms-tool is only available in the eko.one.pl forum repository. 
#If you do not have an image from forum eko.one.pl you have to compile the package manually.

#For images from the eko.one.pl forum we proceed:
opkg update
opkg install sms-tool

Install app.
wget https://github.com/4IceG/luci-app-lite-watchdog/releases/download/1.0.2-20220701/luci-app-lite-watchdog_1.0.2-20220701_all.ipk -O /tmp/luci-app-lite-watchdog_1.0.2-20220701_all.ipk
opkg install /tmp/luci-app-lite-watchdog_1.0.2-20220701_all.ipk

```

### <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_United_Kingdom.png" height="32"> Preview / <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_Poland.png" height="32"> Podgląd

![](https://github.com/4IceG/Personal_data/blob/master/zrzuty/Lite-watchdog.png?raw=true)

## <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_United_Kingdom.png" height="32"> Thanks to / <img src="https://raw.githubusercontent.com/4IceG/Personal_data/master/dooffy_design_icons_EU_flags_Poland.png" height="32"> Podziękowania dla
- [obsy (Cezary Jackiewicz)](https://github.com/obsy)
