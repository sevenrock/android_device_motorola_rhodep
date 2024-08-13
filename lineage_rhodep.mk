#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rhodep device
$(call inherit-product, device/motorola/rhodep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# MindTheGapps
TARGET_IS_GROUPER := true
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

PRODUCT_NAME := lineage_rhodep
PRODUCT_DEVICE := rhodep
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g82 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rhodep_g \
    PRIVATE_BUILD_DESC="rhodep_g-user 13 T1SUS33.1-124-6-9 aafd64 release-keys"

BUILD_FINGERPRINT := motorola/rhodep_g/rhodep:13/T1SUS33.1-124-6-9/aafd64:user/release-keys
