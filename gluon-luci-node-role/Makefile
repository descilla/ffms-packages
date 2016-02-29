include $(TOPDIR)/rules.mk

PKG_NAME:=ffms-gluon-luci-node-role
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)

define Package/ffms-gluon-luci-node-role
  SECTION:=gluon
  CATEGORY:=Gluon
  DEPENDS:=+gluon-luci-admin +ffms-gluon-node-info
  TITLE:=UI for specifying node role
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,ffms-gluon-luci-node-role,i18n)
endef

define Package/ffms-gluon-luci-node-role/install
	$(CP) ./files/* $(1)/
	$(call GluonInstallI18N,ffms-gluon-luci-node-role,$(1))
endef

define Package/ffms-gluon-luci-node-role/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,ffms-gluon-luci-node-role))
