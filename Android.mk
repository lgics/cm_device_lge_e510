ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),e510)
include $(call first-makefiles-under,$(call my-dir))
#Made work Bluetooth Name & Paired
$(shell mkdir -p $(OUT)/data)
$(shell $(call my-dir)/echo_nvmac.sh)
endif
