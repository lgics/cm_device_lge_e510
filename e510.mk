PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/e510/e510-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e510/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
    $(LOCAL_PATH)/configs/univa_keypad.kl:system/usr/keylayout/univa_keypad.kl \
    $(LOCAL_PATH)/configs/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/configs/qt602240_ts_input.idc:system/usr/idc/qt602240_ts_input.idc \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.e510.rc:root/init.e510.rc \
    $(LOCAL_PATH)/ueventd.e510.rc:root/ueventd.e510.rc

# Wi-Fi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# P500 Audio
PRODUCT_PACKAGES += \
    audio_policy.e510 \
    audio.primary.e510

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := e510
PRODUCT_DEVICE := e510
PRODUCT_MODEL := LG-E510

