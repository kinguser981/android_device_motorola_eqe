#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from eqe device
$(call inherit-product, device/motorola/eqe/device.mk)

PRODUCT_DEVICE := eqe
PRODUCT_NAME := twrp_eqe
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 50 pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="eqe_g-user 13 U2UM34.27-38-5 f759b8 release-keys"

BUILD_FINGERPRINT := motorola/eqe_g/eqe:13/U2UM34.27-38-5/f759b8:user/release-keys
