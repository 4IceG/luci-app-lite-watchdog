#
# Copyright 2022-2023 Rafał Wabik - IceG - From eko.one.pl forum
#
# MIT License
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-lite-watchdog
LUCI_TITLE:=LuCI JS Support for lite-watchdog the connection monitor
MAINTAINER:=Rafał Wabik <4Rafal@gmail.com>
LUCI_DESCRIPTION:=LuCI JS interface for the lite-watchdog scripts.
LUCI_DEPENDS:=+sms-tool
LUCI_PKGARCH:=all
PKG_VERSION:=1.0.9-20230701

define Package/luci-app-lite-watchdog/conffiles
/etc/modem/log.txt
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
