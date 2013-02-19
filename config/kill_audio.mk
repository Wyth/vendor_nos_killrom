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
	$(NOTIFICATION_PATH)/Arkham.mp3:system/media/audio/notifications/Arkham.mp3 \
	$(NOTIFICATION_PATH)/bad.ogg:system/media/audio/notifications/bad.ogg

# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/BatmanTone.mp3:system/media/audio/ringtones/BatmanTone.mp3 \
	$(RINGTONE_PATH)/EazyE.ogg:system/media/audio/ringtones/EazyE.ogg \
	$(RINGTONE_PATH)/BeforeIForget.mp3:system/media/audio/ringtones/BeforeIForget.mp3 \
	$(RINGTONE_PATH)/Blind.mp3:system/media/audio/ringtones/Blind.mp3 \
	$(RINGTONE_PATH)/DeadBodiesEverywhere.mp3:system/media/audio/ringtones/DeadBodiesEverywhere.mp3 \
	$(RINGTONE_PATH)/Skip.mp3:system/media/audio/ringtones/Skip.mp3

