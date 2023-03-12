#!/bin/sh
# Copyright 2020-2023 Rafał Wabik (IceG) - From eko.one.pl forum
# MIT License

chmod +x /sbin/watchdog2cron.sh 2>&1 &
chmod +x /usr/bin/lite-watchdog-data.sh 2>&1 &
chmod +x /usr/bin/lite_watchdog.sh 2>&1 &
rm -rf /tmp/luci-indexcache 2>&1 &
rm -rf /tmp/luci-modulecache/ 2>&1 &
exit 0
