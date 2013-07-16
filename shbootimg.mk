LOCAL_PATH := $(call my-dir)

# Add ramdisk dependencies to kernel
TARGET_KERNEL_BINARIES: $(INSTALLED_RAMDISK_TARGET)

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
$(INSTALLED_BOOTIMAGE_TARGET): $(INSTALLED_KERNEL_TARGET)
	$(call pretty,"Boot image: $@")
	$(hide) $(ACP) $(INSTALLED_KERNEL_TARGET) $@

