APP_ABI = armeabi-v7a
#include $(call all-subdir-makefiles)
LOCAL_PATH := $(call my-dir)

# 设置要排除的子目录
SUBDIRS_EXCLUDED := luagl

# 获取当前目录下的非排除子目录
subdirs := $(filter-out $(SUBDIRS_EXCLUDED), $(notdir $(patsubst $(LOCAL_PATH)/%,%,$(wildcard $(LOCAL_PATH)/*/))))

# 遍历子目录并包含各自的 Android.mk 文件
$(foreach dir,$(subdirs), \
    $(eval include $(CLEAR_VARS)) \
    $(eval include $(LOCAL_PATH)/$(dir)/Android.mk) \
)

# 排除 subdirectory3
#subdirs := $(subst $(LOCAL_PATH)/,,$(patsubst %/,%,$(wildcard $(LOCAL_PATH)/*/)))
#subdirs := $(filter-out luagl/, $(subdirs))

#$(foreach dir,$(subdirs),\
    #include $(CLEAR_VARS)\
    #include $(dir)/Android.mk\
#)


