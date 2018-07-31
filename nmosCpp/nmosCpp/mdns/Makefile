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
		bonjour_dns_impl.cpp	\
		core.cpp	\
		service_advertiser.cpp	\
		service_discovery.cpp	\


TARGET_LIB:=libMDns

TARGET_LIB_SHARED:=$(TARGET_LIB).so
TARGET_LIB_STATIC:=$(TARGET_LIB).a
		 
LOCAL_ALL:=

include $(ROOT_DIR)/Makefile.post

