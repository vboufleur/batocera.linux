ifeq ($(BR2_PACKAGE_BATOCERA_TARGET_RK3588)$(BR2_PACKAGE_BATOCERA_TARGET_RK3588_SDIO),y)
define LINUX_BATOCERA_INSTALL_IMAGES_RK3588_DTBOVERLAYS
	mkdir -p $(BINARIES_DIR)/dtbs
	cp -p $(@D)/arch/arm64/boot/dts/rockchip/overlay/*.dtbo  $(BINARIES_DIR)/dtbs
endef
LINUX_POST_INSTALL_IMAGES_HOOKS += LINUX_BATOCERA_INSTALL_IMAGES_RK3588_DTBOVERLAYS
endif
