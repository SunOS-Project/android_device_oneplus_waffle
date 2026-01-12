#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Partitions
BOARD_SUPER_PARTITION_SIZE := 17179869184

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/waffle

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5929L1,OP595DL1

# Display
TARGET_SCREEN_DENSITY := 640
TARGET_SUPPORTS_LTPO := true

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_WAFFLE_DTB=y

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oneplus/waffle/BoardConfigVendor.mk
