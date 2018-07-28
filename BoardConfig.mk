LOCAL_PATH := device/samsung/gtexswifi

TARGET_OTA_ASSERT_DEVICE := SM-T280,gtexswifi

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true

# Audio
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USES_SS_VOIP := true

# Backlight
BACKLIGHT_PATH := /sys/class/backlight/panel/brightness

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SC7730SW

# Camera
CAMERA_SUPPORT_SIZE := 5M
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0
TARGET_BOARD_CAMERA_ANTI_FLICKER := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_NO_CHARGER_LED := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# Codecs
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS

# FM Radio
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_FM_BCM := true

# Graphics
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
HWUI_COMPILE_FOR_PERF := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Hardware-specific
SOC_SCX30G_V2 := true

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.sc8830

# HWComposer
USE_SPRD_HWCOMPOSER := true
USE_SPRD_DITHER := true
USE_OVERLAY_COMPOSER_GPU := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_CONFIG := lineageos_gtexswifi_defconfig
TARGET_KERNEL_SELINUX_CONFIG := lineageos_gtexswifi_defconfig
TARGET_VARIANT_CONFIG := lineageos_gtexswifi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gtexswifi
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/dt.img

# Lights
TARGET_HAS_BACKLIT_KEYS := false

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5289017344
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

# Platform
TARGET_BOARD_PLATFORM := sc8830

# PowerHAL
TARGET_POWERHAL_VARIANT := sprd

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.sc8830
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Sepolicy
BOARD_SEPOLICY_DIRS += \
    device/samsung/gtexswifi/sepolicy

# inherit from the proprietary version
-include vendor/samsung/gtexswifi/BoardConfigVendor.mk

#
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/samsung/gtexswifi/egl.cfg
TARGET_KERNEL_SOURCE := kernel/samsung/gtexswifi
TARGET_KERNEL_CONFIG := gtexswifi_defconfig
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
BOARD_HAS_FLIPPED_SCREEN := true

TARGET_BOARD_INFO_FILE := device/samsung/gtexswifi/board-info.txt
BOARD_SEPOLICY_DIRS += device/samsung/gtexswifi/sepolicy
