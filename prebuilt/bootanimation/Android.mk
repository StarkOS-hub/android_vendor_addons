#
# Copyright (C) 2018-2022 crDroid Android Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#

LOCAL_PATH := $(call my-dir)

# Define bootanimation for 720p resolution
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
    include $(CLEAR_VARS)
    LOCAL_MODULE := bootanimation.zip
    LOCAL_MODULE_CLASS := ETC
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := bootanimation_720.zip
    LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/media
    LOCAL_MODULE_STEM := bootanimation.zip
    include $(BUILD_PREBUILT)

# Fallback to 720p if resolution is not defined or unsupported
else
    $(warning "TARGET_BOOT_ANIMATION_RES is undefined or unsupported, assuming 720p")
    include $(CLEAR_VARS)
    LOCAL_MODULE := bootanimation.zip
    LOCAL_MODULE_CLASS := ETC
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := bootanimation_720.zip
    LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/media
    LOCAL_MODULE_STEM := bootanimation.zip
    include $(BUILD_PREBUILT)
endif
