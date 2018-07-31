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
NMOS_CPP_REGISTRY_NMOS_SOURCES += \
		admin_ui.cpp	\
		api_downgrade.cpp	\
		api_utils.cpp	\
		filesystem_route.cpp	\
		logging_api.cpp	\
		mdns.cpp	\
		mdns_api.cpp	\
		node_api.cpp	\
		process_utils.cpp	\
		query_api.cpp	\
		query_utils.cpp	\
		query_ws_api.cpp	\
		registration_api.cpp	\
		resources.cpp	\
		server_resources.cpp	\
		settings_api.cpp	\


NMOS_CPP_NODE_NMOS_SOURCES += \
		connection_api.cpp	\
		logging_api.cpp	\
		node_api.cpp	\
		node_registration.cpp	\
		node_resources.cpp	\
		
COMMON_SRC += \
		api_downgrade.cpp	\
		api_utils.cpp	\
		mdns.cpp	\
		process_utils.cpp	\
		query_utils.cpp	\
		resources.cpp	\
		settings_api.cpp	\

		

SRC += \
 		$(NMOS_CPP_REGISTRY_NMOS_SOURCES) \
		$(NMOS_CPP_NODE_NMOS_SOURCES) \

LDFLAGS:= -L$(CPP_REST_SDK_HOME)/Linux.bin.$(ARCH)/lib -lcpprest 


TARGET_LIB:=libNmos

TARGET_LIB_SHARED:=$(TARGET_LIB).so
TARGET_LIB_STATIC:=$(TARGET_LIB).a
		 
LOCAL_ALL:=

include $(ROOT_DIR)/Makefile.post

