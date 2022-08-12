#!/bin/sh
# Copyright 2020-2022 Rafał Wabik (IceG) - From eko.one.pl forum
# MIT License

chmod +x /sbin/watchdog2cron.sh
chmod +x /usr/bin/lite-watchdog-data.sh
chmod +x /usr/bin/lite_watchdog.sh
rm -rf /tmp/luci-indexcache
rm -rf /tmp/luci-modulecache/
exit 0
