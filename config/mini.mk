PRODUCT_BRAND ?= killrom

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Cobalt.ogg \
    ro.config.alarm_alert=Nobelium.ogg

# Base audio files
include frameworks/base/data/sounds/AudioPackageElements.mk

LOCAL_PATH:= frameworks/base/data/sounds

# Effects
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/effects/ogg/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	$(LOCAL_PATH)/effects/ogg/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
	$(LOCAL_PATH)/effects/ogg/Dock.ogg:system/media/audio/ui/Dock.ogg \
	$(LOCAL_PATH)/effects/ogg/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
	$(LOCAL_PATH)/effects/ogg/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
	$(LOCAL_PATH)/effects/ogg/Lock.ogg:system/media/audio/ui/Lock.ogg \
	$(LOCAL_PATH)/effects/ogg/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
	$(LOCAL_PATH)/effects/ogg/Media_Volume.ogg:system/media/audio/ui/Media_Volume.ogg \
	$(LOCAL_PATH)/effects/ogg/Undock.ogg:system/media/audio/ui/Undock.ogg \
	$(LOCAL_PATH)/effects/ogg/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
	$(LOCAL_PATH)/effects/ogg/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
	$(LOCAL_PATH)/effects/ogg/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
	$(LOCAL_PATH)/effects/ogg/VolumeIncremental.ogg:system/media/audio/ui/VolumeIncremental.ogg \

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
