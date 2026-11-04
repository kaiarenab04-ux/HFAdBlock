# Makefile
INSTALL_TARGET_PROCESSES = Horrorfield
ARCHS = arm64
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HFAdBlock

HFAdBlock_FILES = Tweak.x
HFAdBlock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
