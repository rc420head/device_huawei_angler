# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common CM stuff.
$(call inherit-product, vendor/candy/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/candy/config/nfc_enhanced.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/huawei/angler/aosp_angler.mk)
$(call inherit-product, vendor/huawei/angler/device-vendor.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/candy/config/common_full_phone.mk)
$(call inherit-product, vendor/candy/config/nfc_enhanced.mk)


DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := candy_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0.1/MMB29Q/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29Q 2480792 release-keys"

