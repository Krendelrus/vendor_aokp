# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

PRODUCT_PACKAGES += \
    MusicFX \
    MusicVisualization \
    Music \
    ROMControl \
    su \
    AppWidgetPicker \
    Trebuchet

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.sf.lcd_density=200 \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.config.notification_sound=F1_New_SMS.ogg \
    ro.config.alarm_alert=Good_Morning.ogg \
    ro.kernel.android.checkjni=0

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/aokp/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/aokp/prebuilt/common/app/FileManager-1.2.apk:system/app/FileManager-1.2.apk \
    vendor/aokp/prebuilt/common/app/UMS.apk:system/app/UMS.apk \
    vendor/aokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf
    
# init.d and other tweaks
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/aokp/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/aokp/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/aokp/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/aokp/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/aokp/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/aokp/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/aokp/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/aokp/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/aokp/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/aokp/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/aokp/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/aokp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aokp/prebuilt/common/etc/gps.conf:system/etc/gps.conf \
    vendor/aokp/prebuilt/common/etc/hosts:system/etc/hosts
    
# Cron
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/aokp/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/aokp/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/aokp/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache

# Media files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/media/audio/alarms/Good_Morning.ogg:system/media/audio/alarms/Good_Morning.ogg

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Inherit common build.prop overrides
-include vendor/aokp/configs/common_versions.mk