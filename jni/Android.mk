# Generated by VisualGDB

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := EbookConv
LOCAL_SRC_FILES := JavaInterface.cpp
LOCAL_C_INCLUDES := 
LOCAL_LDLIBS := -lz -llog
LOCAL_CFLAGS := 
LOCAL_CPPFLAGS := 
LOCAL_LDFLAGS := -Wl,--gc-sections 
LOCAL_STATIC_LIBRARIES := libmobi fb2toepub

# Note: I use LOCAL_WHOLE_STATIC_LIBRARIES for the libs below, as I need to call
# some functions from them in my larger project. If this is not necessary, lump
# them all together in LOCAL_STATIC_LIBRARIES
LOCAL_WHOLE_STATIC_LIBRARIES := unzip101e libiconv libxml2 tidylib

LOCAL_SHARED_LIBRARIES := 
include $(BUILD_SHARED_LIBRARY)

################################################################################
# libmobi

include $(CLEAR_VARS)
LOCAL_MODULE := libmobi
LOCAL_CFLAGS := -std=c99 -DUSE_XMLWRITER -DUSE_LIBXML2 -DUSE_ENCRYPTION

LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libxml2/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libiconv/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libiconv/libcharset/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/zlib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/unzip101e
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/tidylib/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/tidylib/include

LOCAL_SRC_FILES += libs/libmobi/src/buffer.c
LOCAL_SRC_FILES += libs/libmobi/src/compression.c
LOCAL_SRC_FILES += libs/libmobi/src/debug.c
LOCAL_SRC_FILES += libs/libmobi/src/encryption.c
LOCAL_SRC_FILES += libs/libmobi/src/index.c
LOCAL_SRC_FILES += libs/libmobi/src/memory.c
LOCAL_SRC_FILES += libs/libmobi/src/opf.c
LOCAL_SRC_FILES += libs/libmobi/src/parse_rawml.c
LOCAL_SRC_FILES += libs/libmobi/src/read.c
LOCAL_SRC_FILES += libs/libmobi/src/save_epub.c
LOCAL_SRC_FILES += libs/libmobi/src/structure.c
LOCAL_SRC_FILES += libs/libmobi/src/util.c
LOCAL_SRC_FILES += libs/libmobi/src/write.c

include $(BUILD_STATIC_LIBRARY)

################################################################################
#libiconv
# Define vars for library that will be build statically.
include $(CLEAR_VARS)
LOCAL_MODULE := libiconv
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libiconv
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libiconv/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libiconv/libcharset/include

LOCAL_CFLAGS += -Wno-write-strings -Wno-format -DANDROID -DHAVE_ERRNO_H

LOCAL_SRC_FILES += libs/libiconv/lib/iconv.c
LOCAL_SRC_FILES += libs/libiconv/libcharset/lib/localcharset.c

include $(BUILD_STATIC_LIBRARY)

################################################################################
#libxml2
include $(CLEAR_VARS)
LOCAL_MODULE := libxml2
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libxml2
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libxml2/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libiconv/include

LOCAL_CFLAGS += -Wno-write-strings -Wno-format -DANDROID -DHAVE_ERRNO_H
LOCAL_CFLAGS += -DHAVE_ZLIB_H

LOCAL_SRC_FILES += libs/libxml2/DOCBparser.c
LOCAL_SRC_FILES += libs/libxml2/HTMLparser.c
LOCAL_SRC_FILES += libs/libxml2/HTMLtree.c
LOCAL_SRC_FILES += libs/libxml2/SAX.c
LOCAL_SRC_FILES += libs/libxml2/SAX2.c
LOCAL_SRC_FILES += libs/libxml2/buf.c
LOCAL_SRC_FILES += libs/libxml2/c14n.c
LOCAL_SRC_FILES += libs/libxml2/catalog.c
LOCAL_SRC_FILES += libs/libxml2/chvalid.c
LOCAL_SRC_FILES += libs/libxml2/debugXML.c
LOCAL_SRC_FILES += libs/libxml2/dict.c
LOCAL_SRC_FILES += libs/libxml2/encoding.c
LOCAL_SRC_FILES += libs/libxml2/entities.c
LOCAL_SRC_FILES += libs/libxml2/error.c
LOCAL_SRC_FILES += libs/libxml2/globals.c
LOCAL_SRC_FILES += libs/libxml2/hash.c
LOCAL_SRC_FILES += libs/libxml2/legacy.c
LOCAL_SRC_FILES += libs/libxml2/list.c
LOCAL_SRC_FILES += libs/libxml2/nanoftp.c
LOCAL_SRC_FILES += libs/libxml2/nanohttp.c
LOCAL_SRC_FILES += libs/libxml2/parser.c
LOCAL_SRC_FILES += libs/libxml2/parserInternals.c
LOCAL_SRC_FILES += libs/libxml2/pattern.c
LOCAL_SRC_FILES += libs/libxml2/relaxng.c
LOCAL_SRC_FILES += libs/libxml2/schematron.c
LOCAL_SRC_FILES += libs/libxml2/threads.c
LOCAL_SRC_FILES += libs/libxml2/tree.c
#LOCAL_SRC_FILES += libs/libxml2/trio.c
#LOCAL_SRC_FILES += libs/libxml2/triostr.c
LOCAL_SRC_FILES += libs/libxml2/uri.c
LOCAL_SRC_FILES += libs/libxml2/valid.c
LOCAL_SRC_FILES += libs/libxml2/xinclude.c
LOCAL_SRC_FILES += libs/libxml2/xlink.c
LOCAL_SRC_FILES += libs/libxml2/xmlIO.c
LOCAL_SRC_FILES += libs/libxml2/xmlmemory.c
LOCAL_SRC_FILES += libs/libxml2/xmlmodule.c
LOCAL_SRC_FILES += libs/libxml2/xmlreader.c
LOCAL_SRC_FILES += libs/libxml2/xmlregexp.c
LOCAL_SRC_FILES += libs/libxml2/xmlsave.c
LOCAL_SRC_FILES += libs/libxml2/xmlschemas.c
LOCAL_SRC_FILES += libs/libxml2/xmlschemastypes.c
LOCAL_SRC_FILES += libs/libxml2/xmlstring.c
LOCAL_SRC_FILES += libs/libxml2/xmlunicode.c
LOCAL_SRC_FILES += libs/libxml2/xmlwriter.c
LOCAL_SRC_FILES += libs/libxml2/xpath.c
LOCAL_SRC_FILES += libs/libxml2/xpointer.c
#LOCAL_SRC_FILES += libs/libxml2/xzlib.c

include $(BUILD_STATIC_LIBRARY)

################################################################################
#unzip101e
include $(CLEAR_VARS)
LOCAL_MODULE := unzip101e
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/unzip101e/
LOCAL_CFLAGS += -Wno-write-strings

LOCAL_SRC_FILES += libs/unzip101e/unzip.c
LOCAL_SRC_FILES += libs/unzip101e/ioapi.c
LOCAL_SRC_FILES += libs/unzip101e/zip.c

include $(BUILD_STATIC_LIBRARY)

################################################################################
# tidylib

include $(CLEAR_VARS)
LOCAL_MODULE := tidylib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/tidylib/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/tidylib/include
# NDEBUG define needed to shut up printing debug info in debug builds.
LOCAL_CFLAGS += -Wno-write-strings -gdwarf-2 -DNDEBUG -DCYGWIN_OS

LOCAL_SRC_FILES += libs/tidylib/src/access.c
LOCAL_SRC_FILES += libs/tidylib/src/alloc.c
LOCAL_SRC_FILES += libs/tidylib/src/attrask.c
LOCAL_SRC_FILES += libs/tidylib/src/attrdict.c
LOCAL_SRC_FILES += libs/tidylib/src/attrget.c
LOCAL_SRC_FILES += libs/tidylib/src/attrs.c
LOCAL_SRC_FILES += libs/tidylib/src/buffio.c
LOCAL_SRC_FILES += libs/tidylib/src/charsets.c
LOCAL_SRC_FILES += libs/tidylib/src/clean.c
LOCAL_SRC_FILES += libs/tidylib/src/config.c
LOCAL_SRC_FILES += libs/tidylib/src/entities.c
LOCAL_SRC_FILES += libs/tidylib/src/fileio.c
LOCAL_SRC_FILES += libs/tidylib/src/gdoc.c
LOCAL_SRC_FILES += libs/tidylib/src/iconvtc.c
LOCAL_SRC_FILES += libs/tidylib/src/istack.c
LOCAL_SRC_FILES += libs/tidylib/src/lexer.c
LOCAL_SRC_FILES += libs/tidylib/src/localize.c
LOCAL_SRC_FILES += libs/tidylib/src/mappedio.c
LOCAL_SRC_FILES += libs/tidylib/src/parser.c
LOCAL_SRC_FILES += libs/tidylib/src/pprint.c
LOCAL_SRC_FILES += libs/tidylib/src/sprtf.c
LOCAL_SRC_FILES += libs/tidylib/src/streamio.c
LOCAL_SRC_FILES += libs/tidylib/src/tagask.c
LOCAL_SRC_FILES += libs/tidylib/src/tags.c
LOCAL_SRC_FILES += libs/tidylib/src/tidylib.c
LOCAL_SRC_FILES += libs/tidylib/src/tmbstr.c
LOCAL_SRC_FILES += libs/tidylib/src/utf8.c

include $(BUILD_STATIC_LIBRARY)

################################################################################
# fb2toepub

include $(CLEAR_VARS)
LOCAL_MODULE := fb2toepub
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/fb2toepub
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/libs/fb2toepub/tiniconv
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libs/unzip101e/
LOCAL_CFLAGS += -Wno-write-strings -gdwarf-2
LOCAL_CPPFLAGS += -fexceptions

LOCAL_SRC_FILES += libs/fb2toepub/tiniconv/tiniconv.c
LOCAL_SRC_FILES += libs/fb2toepub/tiniconv/tiniconv_desc.c
LOCAL_SRC_FILES += libs/fb2toepub/base64.cpp
LOCAL_SRC_FILES += libs/fb2toepub/convinfo.cpp
LOCAL_SRC_FILES += libs/fb2toepub/convpass1.cpp
LOCAL_SRC_FILES += libs/fb2toepub/convpass2.cpp
# LOCAL_SRC_FILES += libs/fb2toepub/error.cpp - re-done with std::exception
# LOCAL_SRC_FILES += libs/fb2toepub/fb2toepub.cpp - main() function, not needed in a library
LOCAL_SRC_FILES += libs/fb2toepub/fb2toepubconv.cpp
LOCAL_SRC_FILES += libs/fb2toepub/mangling.cpp
LOCAL_SRC_FILES += libs/fb2toepub/opentypefont.cpp
LOCAL_SRC_FILES += libs/fb2toepub/scandir.cpp
LOCAL_SRC_FILES += libs/fb2toepub/scanner.cpp
LOCAL_SRC_FILES += libs/fb2toepub/scannermisc.cpp
LOCAL_SRC_FILES += libs/fb2toepub/stream.cpp
LOCAL_SRC_FILES += libs/fb2toepub/streamconv.cpp
LOCAL_SRC_FILES += libs/fb2toepub/streamconvICU.cpp
LOCAL_SRC_FILES += libs/fb2toepub/streamtini.cpp
LOCAL_SRC_FILES += libs/fb2toepub/streamutf8.cpp
LOCAL_SRC_FILES += libs/fb2toepub/streamzip.cpp
LOCAL_SRC_FILES += libs/fb2toepub/translit.cpp
LOCAL_SRC_FILES += libs/fb2toepub/types.cpp
LOCAL_SRC_FILES += libs/fb2toepub/uuidmisc.cpp

include $(BUILD_STATIC_LIBRARY)
