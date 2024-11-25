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

# Inherit from t6100a_wifi device
$(call inherit-product, device/lenovo/m9/device.mk)

PRODUCT_DEVICE := t6100a_wifi
PRODUCT_NAME := twrp_m9
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Tab M9
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB310FU-user 12 SP1A.210812.016 TB310FU_USR_S000889_2409130513_mp1V14203_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/TB310FU/TB310FU:12/SP1A.210812.016/S000889_240913_ROW:user/release-keys
