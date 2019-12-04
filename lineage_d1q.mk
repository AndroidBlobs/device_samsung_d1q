# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from d1q device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := d1q
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_d1q
PRODUCT_MODEL := SM-N970U

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := d1q
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="d1qsq-user 9 PPR1.180610.011 N970USQS2ASJ8 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/d1qsq/d1q:9/PPR1.180610.011/N970USQS2ASJ8:user/release-keys
