#
# Copyright 2022-2023 Rafał Wabik - IceG - From eko.one.pl forum
#
# MIT License
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-lite-watchdog
LUCI_TITLE:=LuCI JS Support for lite-watchdog scripts
LUCI_DESCRIPTION:=LuCI JS interface for the lite-watchdog scripts.
LUCI_DEPENDS:=+sms-tool
LUCI_PKGARCH:=all
PKG_VERSION:=1.0.7-20230320

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
