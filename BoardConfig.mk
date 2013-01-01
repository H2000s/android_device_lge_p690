# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

-include vendor/lge/p690/BoardConfigVendor.mk

# Camera
# http://r.cyanogenmod.com/#/c/13317/
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
# This is needed by libcamera.so
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

# kernel
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27
TARGET_KERNEL_CONFIG := cyanogenmod_p690_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p690 no_console_suspend

# Board
TARGET_BOOTLOADER_BOARD_NAME := p690
TARGET_OTA_ASSERT_DEVICE := gelato,p690

# Platform
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27

# CPU
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
ARCH_ARM_HAVE_VFP := true

# Browser & WebKit
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Boot loader & recovery
TARGET_NO_BOOTLOADER := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true

# Enable OpenGL Hardware Acceleration
# msm7x27: no support for overlay, bypass, or c2d
USE_OPENGL_RENDERER := true
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_GENLOCK := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_CFG := device/lge/msm7x27-common/configs/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DREFRESH_RATE=60
# Enable OMX
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX

# Enable the GPS HAL & AMSS version to use for GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Wi-Fi & Wi-Fi HotSpot
WPA_SUPPLICANT_VERSION          := VER_0_6_X
BOARD_WLAN_DEVICE               := bcm4330
BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_FW_PATH_STA         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP          := "/system/etc/wl/rtecdc-apsta.bin"

# Fix this up by examining /proc/mtd on a running device
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0e600000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09f80000
BOARD_FLASH_BLOCK_SIZE := 131072

# Audio
ARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false

#Bluetooth
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# FM Radio
BOARD_FM_DEVICE := bcm4330
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

# RIL
BOARD_PROVIDES_LIBRIL := true

# Mass Storage for ICS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Command line for charging mode
BOARD_CHARGING_CMDLINE_NAME := "lge.reboot"
BOARD_CHARGING_CMDLINE_VALUE := "pwroff"
BOARD_USES_RECOVERY_CHARGEMODE := false

# OTA script
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/lge/msm7x27-common/releasetools/ota_from_target_files

USE_CAMERA_STUB := false
