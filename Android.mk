LOCAL_PATH:= $(call my-dir)

UNRAR_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -Wall -Wno-unused-parameter -O2

LOCAL_SRC_FILES := \
	rar.cpp strlist.cpp strfn.cpp pathfn.cpp savepos.cpp smallfn.cpp global.cpp file.cpp filefn.cpp filcreat.cpp \
	archive.cpp arcread.cpp unicode.cpp system.cpp isnt.cpp crypt.cpp crc.cpp rawread.cpp encname.cpp \
	resource.cpp match.cpp timefn.cpp rdwrfn.cpp consio.cpp options.cpp ulinks.cpp errhnd.cpp rarvm.cpp \
	rijndael.cpp getbits.cpp sha1.cpp extinfo.cpp extract.cpp volume.cpp list.cpp find.cpp unpack.cpp cmddata.cpp \
	filestr.cpp recvol.cpp rs.cpp scantree.cpp

LOCAL_MODULE := unrar

LOCAL_C_INCLUDES := \
	external/unrar

LOCAL_CPPFLAGS := -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -UALLOW_EXCEPTIONS

include $(BUILD_EXECUTABLE)
