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
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_OUT_PRODUCT)/media/bootanimation.zip
else
    $(warning "TARGET_BOOT_ANIMATION_RES is undefined or not supported, assuming 720p")
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_OUT_PRODUCT)/media/bootanimation.zip
endif

# Create a symbolic link for bootanimation-dark.zip if necessary
BOOTANIMATION_SYMLINK := $(TARGET_OUT_PRODUCT)/media/bootanimation-dark.zip
$(BOOTANIMATION_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf bootanimation.zip $@

ALL_DEFAULT_INSTALLED_MODULES += $(BOOTANIMATION_SYMLINK)
