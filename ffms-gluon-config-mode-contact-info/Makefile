include $(TOPDIR)/rules.mk

PKG_NAME:=ffms-gluon-config-mode-contact-info
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)


define Package/ffms-gluon-config-mode-contact-info
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Set a custom string that will be distributed in the mesh.
  DEPENDS:=gluon-config-mode-core-virtual +ffms-gluon-node-info
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,ffms-gluon-config-mode-contact-info,i18n)
endef

define Package/ffms-gluon-config-mode-contact-info/install
	$(CP) ./files/* $(1)/
	$(call GluonInstallI18N,ffms-gluon-config-mode-contact-info,$(1))
endef

$(eval $(call BuildPackage,ffms-gluon-config-mode-contact-info))
