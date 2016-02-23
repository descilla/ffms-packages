include $(TOPDIR)/rules.mk

PKG_NAME:=ffms-gluon-node-info
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
PKG_BUILD_DEPENDS := respondd

include $(GLUONDIR)/include/package.mk

define Package/ffms-gluon-node-info
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Add /etc/config/ffms-gluon-node-info to uci
  DEPENDS:=+gluon-core +libgluonutil
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/ffms-gluon-node-info/install
	$(CP) ./files/* $(1)/

	$(INSTALL_DIR) $(1)/lib/gluon/respondd
	$(CP) $(PKG_BUILD_DIR)/respondd.so $(1)/lib/gluon/respondd/node-info.so
endef

define Package/ffms-gluon-node-info/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,ffms-gluon-node-info))
