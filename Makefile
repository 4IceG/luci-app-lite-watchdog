# Copyright 2022 Rafał Wabik - IceG - From eko.one.pl forum
# MIT License

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-lite-watchdog
LUCI_TITLE:=LuCI panel for lite-watchdog
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+sms-tool
PKG_VERSION:=1.0.3-20220812
PKG_RELEASE:=1

define Package/$(PKG_NAME)
	$(call Package/luci/webtemplate)
	TITLE:=$(LUCI_TITLE)
	DEPENDS:=$(LUCI_DEPENDS)
endef

define Package/$(PKG_NAME)/description
	LuCI panel for lite-watchdog.
endef

include $(TOPDIR)/feeds/luci/luci.mk

$(eval $(call BuildPackage,$(PKG_NAME)))

# call BuildPackage - OpenWrt buildroot signature
