#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from santoni device
$(call inherit-product, device/xiaomi/santoni/device.mk)

PRODUCT_DEVICE := santoni
PRODUCT_NAME := omni_santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4X
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="santoni-user 7.1.2 N2G47H V10.3.1.0.NAMMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/santoni/santoni:7.1.2/N2G47H/V10.3.1.0.NAMMIXM:user/release-keys
