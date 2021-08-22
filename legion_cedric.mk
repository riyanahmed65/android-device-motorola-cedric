#
# Copyright (C) 2021 The LegionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cedric device
$(call inherit-product, device/motorola/cedric/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LegionOS stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

# LegionOS Props
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# LegionOS Device Maintainers
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=MdRiyan

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := legion_cedric
PRODUCT_DEVICE := cedric
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G (5)
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cedric_retail-user 8.1.0 OPP28.85-19-4-2 3447de release-keys" \
    PRODUCT_NAME="cedric_retail"

BUILD_FINGERPRINT := motorola/cedric_retail/cedric:8.1.0/OPP28.85-19-4-2/3447de:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
