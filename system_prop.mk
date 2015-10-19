# Audio
PRODUCT_PROPERTY_OVERRIDES += \
persist.audio.fluence.mode=endfire \
persist.audio.vr.enable=false \
persist.audio.handset.mic=digital \
qcom.hw.aac.encoder=true \
ro.qc.sdk.audio.fluencetype=fluence

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera2.portability.force_api=1 \
    ro.cam.hw.version=m7

# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.sf.hw=1 \
debug.egl.hw=1 \
debug.composition.type=gpu \
debug.enabletr=true \
ro.hwui.renderer.disable_opaque=true \
ro.sf.lcd_density=480 \
persist.hwc.mdpcomp.enable=true \
debug.mdpcomp.maxlayer=3 \
debug.egl.buffcount=4 \
dev.pm.dyn_samplingrate=1 \
ro.opengles.version=196608

#GPS
PRODUCT_PROPERTY_OVERRIDES += \
persist.gps.qmienabled=true

# Input
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    debug.nfc.fw_download=true \
    debug.nfc.fw_boot_download=false \
    debug.nfc.se=true \
    ro.nfc.port=I2C

#NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

#RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.disable.cpc=1 \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.radio.apm_sim_not_pwdn=1 \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1

# USB OTG interface
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

