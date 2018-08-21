LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := pmd
LOCAL_SRC_FILES := pmd.c
LOCAL_CPPFLAGS := -O3 -Wall -fPIE
LOCAL_LDLIBS := -O3 -llog -fPIE -pie
LOCAL_LDLIBS += -L/home/icsr/Desktop/ndk/platforms/android-19/arch-arm/usr/lib
# LIB_PATH := /home/icsr/Desktop/ndk/platforms/android-19/arch-arm/usr/lib
LOCAL_C_INCLUDES := /home/icsr/Desktop/ndk/platforms/android-19/arch-arm/usr/include/

include $(BUILD_EXECUTABLE)
