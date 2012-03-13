LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	platform/WmlsPlatform.c \
	platform/WmlsUtf8.c \
	\
	wmlsec/WmlsController.c \
	\
	wmlsip/SfbWmlsConvert.c \
	wmlsip/SfbWmlsDebug.c \
	wmlsip/SfbWmlsDialogLib.c \
	wmlsip/SfbWmlsFloatLib.c \
	wmlsip/SfbWmlsInterpret.c \
	wmlsip/SfbWmlsInterpreterUtils.c \
	wmlsip/SfbWmlsLangLib.c \
	wmlsip/SfbWmlsLibrary.c \
	wmlsip/SfbWmlsLoadWmlsc.c \
	wmlsip/SfbWmlsMem.c \
	wmlsip/SfbWmlsMicroOp.c \
	wmlsip/SfbWmlsOperation.c \
	wmlsip/SfbWmlsString.c \
	wmlsip/SfbWmlsStringLib.c \
	wmlsip/SfbWmlsUniElement.c \
	wmlsip/SfbWmlsUniStr.c \
	wmlsip/SfbWmlsURLEscape.c \
	wmlsip/SfbWmlsURLLib.c \
	wmlsip/SfbWmlsURLParse.c \
	wmlsip/SfbWmlsVMachine.c \
	wmlsip/SfbWmlsWTAPublicLib.c \
	wmlsip/SfbWmlsWMLBLib.c \
	\
	wmlscr/WmlsLexer.c \
	wmlscr/WmlsParser.c \
	\
	wmlscr/wmlsbcgen/WmlsBC.c \
	wmlscr/wmlsbcgen/WmlsBinaryNode.c \
	wmlscr/wmlsbcgen/WmlsConstants.c \
	wmlscr/wmlsbcgen/WmlsIdentifier.c \
	wmlscr/wmlsbcgen/WmlsLibLookup.c \
	wmlscr/wmlsbcgen/WmlsPool.c \
	wmlscr/wmlsbcgen/WmlsTernaryNode.c \
	wmlscr/wmlsbcgen/WmlsUnaryNode.c \
	wmlscr/wmlsbcgen/WmlsUtils.c \
	
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/H \
	$(LOCAL_PATH)/wmlscr \
	$(LOCAL_PATH)/wmlscr/H \
	$(LOCAL_PATH)/wmlsip \
	$(LOCAL_PATH)/wmlsip/H \
	$(LOCAL_PATH)/wmlsec \
	$(LOCAL_PATH)/wmlsec/H \
	
LOCAL_CFLAGS += -O3

LOCAL_MODULE:= libwmlscriptcore

include $(BUILD_SHARED_LIBRARY)


