# Generated by VisualGDB
NDK_TOOLCHAIN_VERSION= 4.9
APP_PLATFORM := android-10
APP_CFLAGS := -gdwarf-2 -Wno-write-strings
APP_ARM_MODE := thumb
APP_STL := stlport_shared
#APP_CPPFLAGS += -fexceptions
ifeq ($(NDK_DEBUG),1)
    APP_OPTIM := debug
	APP_CFLAGS += -D_DEBUG
    APP_ABI := x86 armeabi-v7a
else 
    APP_OPTIM := release
    APP_ABI := mips armeabi armeabi-v7a x86
	#APP_ABI := x86
endif
