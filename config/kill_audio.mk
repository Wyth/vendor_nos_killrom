#
# KILLRom Audio Files
#

ALARM_PATH := vendor/nos/killrom/prebuilt/system/media/audio/alarms
NOTIFICATION_PATH := vendor/nos/killrom/prebuilt/system/media/audio/notifications
RINGTONE_PATH := vendor/nos/killrom/prebuilt/system/media/audio/ringtones
UI_PATH := vendor/nos/killrom/prebuilt/system/media/audio/ui

# Notifications
PRODUCT_COPY_FILES += \
	$(NOTIFICATION_PATH)/Nobody-Move.ogg:system/media/audio/notifications/Nobody-Move.ogg \
	$(NOTIFICATION_PATH)/bad.ogg:system/media/audio/notifications/bad.ogg

# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/EazyE.ogg:system/media/audio/ringtones/EazyE.ogg

