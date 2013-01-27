ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),e510)
include $(call first-makefiles-under,$(call my-dir))
endif
