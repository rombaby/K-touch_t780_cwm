USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/K-Touch/t780/BoardConfigVendor.mk

#CPU
#TARGET_ARCH= arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sc8810

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := t780

#KERNEL
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 mem=239M
BOARD_KERNEL_BASE := 0x00000000
BOARD_FORCE_RAMDISK_ADDRESS := 0x01000000
BOARD_KERNEL_PAGESIZE := 2048

#BOARD_CUSTOM_RECOVERY_DEVICE_NAME := K-Touch t780


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x805c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x60000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x805c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x805c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/K-Touch/t780/kernel

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"
BOARD_UMS_LUNFILE :="/sys/class/android_usb/f_mass_storage/lun%d/file"
BOARD_COFFACE_RECOVERY := true
BOARD_CUSTOM_recovery := true
BOARD_CUSTOM_edifyscripting :=true

