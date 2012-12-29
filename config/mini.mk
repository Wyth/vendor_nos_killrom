PRODUCT_BRAND ?= killrom


# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Cobalt.ogg \
    ro.config.alarm_alert=Nobelium.ogg

# Base audio files
include frameworks/base/data/sounds/AudioPackageElements.mk

PRODUCT_PACKAGE_OVERLAYS += \
vendor/nos/killrom/overlay/common

# T-Mobile theme engine
include vendor/nos/killrom/config/themes_common.mk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/etc/init.d/01killbomb:system/etc/init.d/01killbomb \
    vendor/nos/killrom/prebuilt/system/etc/init.d/91killrzipalign:system/etc/init.d/91killrzialign

# sysinit and sysctl support
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/bin/sysinit:system/bin/sysinit \
    vendor/nos/killrom/prebuilt/system/etc/sysctl.conf:system/etc/sysctl.conf

# Copy SuperSu
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/app/SuperSU.apk:system/app/SuperSU.apk \
    vendor/nos/killrom/prebuilt/system/xbin/su:system/xbin/su

#killr extras
PRODUCT_PACKAGES += \
        KILLRHome \
        SpeedDemon

# extras
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/xbin/zipalign:system/xbin/zipalign \
    vendor/nos/killrom/prebuilt/system/xbin/sqlite3:system/xbin/sqlite3
