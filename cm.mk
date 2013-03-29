## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := t780

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/K-Touch/t780/device_t780.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t780
PRODUCT_NAME := cm_t780
PRODUCT_BRAND := K-Touch
PRODUCT_MODEL := K-Touch T780
PRODUCT_MANUFACTURER := K-Touch
