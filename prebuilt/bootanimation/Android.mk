# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_PIXEL_BOOT_ANIMATION_RES),1080)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else ifeq ($(TARGET_PIXEL_BOOT_ANIMATION_RES),1440)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1440.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else ifeq ($(TARGET_PIXEL_BOOT_ANIMATION_RES),720)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else
    ifeq ($(TARGET_BOOT_ANIMATION_RES),)
        $(warning "TARGET_BOOT_ANIMATION_RES is undefined, assuming 720p as default")
    else
        $(warning "Current bootanimation res is not supported, forcing 720p as default")
    endif
    # Default to 720p if no resolution is defined or supported
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
