#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := r0q

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from r0q device
$(call inherit-product, device/samsung/r0q/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/r0q/recovery/root,recovery/root)

PRODUCT_DEVICE := r0q
PRODUCT_NAME := twrp_r0q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-51C
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
