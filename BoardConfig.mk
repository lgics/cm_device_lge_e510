-include vendor/lge/e510/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_e510_defconfig

TARGET_BOOTLOADER_BOARD_NAME := e510
TARGET_OTA_ASSERT_DEVICE := univa,e510

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=e510 no_console_suspend

TARGET_PROVIDES_LIBRIL := true

TARGET_PROVIDES_LIBAUDIO := true
# Enable ICS-backwards compatibility    
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
TARGET_DISABLE_ARM_PIE := true



