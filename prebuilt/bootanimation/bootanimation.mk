# Bootanimation for 720p
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_OUT_PRODUCT)/media/bootanimation.zip
else
    ifeq ($(TARGET_BOOT_ANIMATION_RES),)
        $(warning "TARGET_BOOT_ANIMATION_RES is undefined, assuming 720p")
        PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_OUT_PRODUCT)/media/bootanimation.zip
    else
        $(warning "Current bootanimation res is not supported, forcing 720p")
        PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_OUT_PRODUCT)/media/bootanimation.zip
    endif
endif
