THEOS_DEVICE_IP = localhost -o StrictHostKeyChecking=no
THEOS_DEVICE_PORT = 2222

ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = MyBus

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyBusNoAds

MyBusNoAds_FILES = Tweak.x
MyBusNoAds_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
