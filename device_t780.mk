$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/K-Touch/t780/t780-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/K-Touch/t780/overlay

LOCAL_PATH := device/K-Touch/t780
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


PRODUCT_COPY_FILES += \
 $(LOCAL_PATH)/res/images:$(TARGET_RECOVERY_ROOT_OUT)/res/images \
 device/K-Touch/t780/recovery/bin/charge:/recovery/root/bin/charge \
 device/K-Touch/t780/recovery/bin/rawdatad:/recovery/root/bin/rawdatad \
 device/K-Touch/t780/recovery/bin/vcharged:/recovery/root/bin/vcharged \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
ro.weibo.com=weibo.com/cofface


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := sp8810eabase
PRODUCT_DEVICE := sp8810ea
