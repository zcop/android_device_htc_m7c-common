#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product-if-exists, vendor/htc/m7c-common/m7c-common-vendor.mk)

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc \
    init.qcom.firmware_links.sh

# Qcom init scripts for /etc
PRODUCT_PACKAGES += \
   init.qcom.bt.bluedroid.sh \
   init.qcom.bt.sh \
   init.qcom.ril.sh \
   init.qcom.wifi.sh


# Permissions
PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    $(LOCAL_PATH)/configs/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_amplifier.msm8960 \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

# Use vendor camerawrapper
# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf


# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    liboverlay \
    memtrack.msm8960

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8960

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# NFC
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    nfc.msm8960 \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw \
    libdashplayer \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer \
    htcirlibs

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi firmware
PRODUCT_PACKAGES += \
    wcnss_service

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:/system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:/system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    hostapd \
    hostapd_default.conf \
    dhcpcd.conf \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# ADB unsecure
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

# USB ADB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
