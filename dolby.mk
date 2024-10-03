DOLBY_PATH := vendor/dolby

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Configs
PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/configs/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DOLBY_PATH)/configs/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(DOLBY_PATH)/configs/preinstalled-packages-platform-dolby-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-platform-dolby-product.xml

# Props
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.audio_fx.current=dolby \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true \
    ro.vendor.audio.dolby.dax.support=true

PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm/arch-arm-armv7-a-neon/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_foundation-v33.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_foundation-v33.so

PRODUCT_PACKAGES += \
    libavservices_minijail_vendor \
    libcodec2_soft_common.vendor \
    libsfplugin_ccodec_utils.vendor

$(call inherit-product, vendor/dolby/common/common-vendor.mk)
