# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for p690.
$(call inherit-product, device/lge/p690/p690.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#include qcom opensource features
$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)

# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

PRODUCT_NAME := cm_p690
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p690
PRODUCT_MODEL := LG-P690
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_p690 \
    BUILD_FINGERPRINT="lge/gelato/gelato:2.3.3/GRI40/LG-P690-V10c.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="gelato-user 2.3.3 GRI40 LG-P690-V10c.19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusNet
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
