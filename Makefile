#
# Copyright 2022 Rafał Wabik - IceG - From eko.one.pl forum
# MIT License

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.4-20221008
PKG_NAME:=luci-app-lite-watchdog
LUCI_TITLE:=LuCI panel for lite-watchdog
LUCI_DEPENDS:=+sms-tool
LUCI_PKGARCH:=all

#include ../../luci.mk
include $(TOPDIR)/feeds/luci/luci.mk

$(eval $(call BuildPackage,$(PKG_NAME)))

# call BuildPackage - OpenWrt buildroot signature
