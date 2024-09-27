# Bootanimation

# Clear previous variable values
include $(CLEAR_VARS)

# Define the source for the boot animation
BOOTANIMATION_FILE := vendor/addons/prebuilt/bootanimation/bootanimation_720.zip

ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
    LOCAL_SRC_FILES := $(BOOTANIMATION_FILE)
else ifeq ($(TARGET_PIXEL_BOOT_ANIMATION_RES),720)
    LOCAL_SRC_FILES := $(BOOTANIMATION_FILE)
else
    ifeq ($(TARGET_BOOT_ANIMATION_RES),)
        $(warning "TARGET_BOOT_ANIMATION_RES is undefined, assuming 720p as default")
    else
        $(warning "Current bootanimation res is not supported, forcing 720p as default")
    endif
    # Default to 720p
    LOCAL_SRC_FILES := $(BOOTANIMATION_FILE)
endif

# Define a module for the boot animation
LOCAL_MODULE := bootanimation
LOCAL_MODULE_CLASS := PRODUCT

# Assign the source files to PRODUCT_COPY_FILES
PRODUCT_COPY_FILES += $(LOCAL_SRC_FILES):$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip

# Build the prebuilt module
include $(BUILD_PREBUILT)
