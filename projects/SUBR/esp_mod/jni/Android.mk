LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := SUBRESP
LOCAL_SRC_FILES := hack.cpp
LOCAL_LDLIBS := -llog -lEGL -lGLESv2 -ldl
LOCAL_CPPFLAGS := -std=c++17 -O2 -fvisibility=hidden -fexceptions -frtti
include $(BUILD_SHARED_LIBRARY)
