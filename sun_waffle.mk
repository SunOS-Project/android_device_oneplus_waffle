#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from waffle device
$(call inherit-product, device/oneplus/waffle/device.mk)

# Inherit some common SunOS stuff.
$(call inherit-product, vendor/sun/config/common_full_phone.mk)

# Official
SUN_BUILD_TYPE := Official

PRODUCT_NAME := sun_waffle
PRODUCT_DEVICE := waffle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2581

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=OP595DL1 \
    DeviceProduct=CPH2581 \
    SystemDevice=OP595DL1 \
    SystemName=CPH2581
