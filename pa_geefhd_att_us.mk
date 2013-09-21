# Check for target product
ifeq (pa_geefhd_att_us,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xxhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE := true


# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk


# Inherit device configuration
$(call inherit-product, device/lge/geefhd_att_us/full_geefhd_att_us.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geefhd_att_us
PRODUCT_NAME := pa_geefhd_att_us
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E980
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"


endif
