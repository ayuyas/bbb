APP_ABI = armeabi-v7a
#include $(call all-subdir-makefiles)
LOCAL_PATH := $(call my-dir)

# 排除 subdirectory3
subdirs := $(subst $(LOCAL_PATH)/,,$(patsubst %/,%,$(wildcard $(LOCAL_PATH)/*/)))
subdirs := $(filter-out luagl/, $(subdirs))

$(foreach dir,$(subdirs),\
    include $(CLEAR_VARS)\
    include $(dir)/Android.mk\
)


