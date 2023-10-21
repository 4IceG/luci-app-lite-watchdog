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
LUCI_DEPENDS:=+sms-tool +kmod-usb-serial +kmod-usb-serial-option +comgt
LUCI_PKGARCH:=all
PKG_VERSION:=1.0.12-20231021

define Package/luci-app-lite-watchdog/conffiles
/etc/modem/log.txt
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
