#
# $Id$
#

include $(RULE_DIR)/Rules.mak

CODE_SUBDIRS = \
					.


C_FLAGS += $(SHARED_CFLAGS)


################################################
####   source file 
################################################

SRC += \
		api_router.cpp	\
		host_utils.cpp	\
		http_utils.cpp	\
		json_utils.cpp	\
		ws_listener_impl.cpp	\


TARGET_LIB:=libCppRestNmos

TARGET_LIB_SHARED:=$(TARGET_LIB).so
TARGET_LIB_STATIC:=$(TARGET_LIB).a
		 
LOCAL_ALL:=

include $(ROOT_DIR)/Makefile.post

