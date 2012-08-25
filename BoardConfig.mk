-include vendor/lge/e510/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_e510_defconfig

TARGET_BOOTLOADER_BOARD_NAME := e510
TARGET_OTA_ASSERT_DEVICE := univa,e510

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=e510 no_console_suspend

# Nedeed for sensors
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

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

# FM Radio
BOARD_FM_DEVICE := bcm4330
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

USE_CAMERA_STUB := false

