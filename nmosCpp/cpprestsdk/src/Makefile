#
# $Id$
#

include $(RULE_DIR)/Rules.mak

CODE_SUBDIRS = \
		http/client \
		http/common \
		http/listener \
		http/oauth \
		json \
		pplx \
		streams \
		uri \
		utilities \
		websockets/client \
					


C_FLAGS += $(SHARED_CFLAGS)

CC_CFLAGS += $(REST_SDK_CC_CFLAGS) -Ipch 

################################################
####   source file 
################################################

SRC += \
	http/client/http_client.cpp \
	http/client/http_client_msg.cpp \
	http/client/x509_cert_utilities.cpp \
	http/client/http_client_asio.cpp \
	http/common/http_helpers.cpp \
	http/common/http_msg.cpp \
	http/listener/http_listener.cpp \
	http/listener/http_listener_msg.cpp \
	http/listener/http_server_api.cpp \
	http/listener/http_server_asio.cpp \
	http/oauth/oauth1.cpp \
	http/oauth/oauth2.cpp \
	json/json.cpp \
	json/json_parsing.cpp \
	json/json_serialization.cpp \
	pplx/pplx.cpp \
	pplx/pplxlinux.cpp \
	pplx/threadpool.cpp \
	streams/fileio_posix.cpp \
	uri/uri.cpp \
	uri/uri_builder.cpp \
	utilities/asyncrt_utils.cpp \
	utilities/base64.cpp \
	utilities/web_utilities.cpp \
	websockets/client/ws_msg.cpp \
	websockets/client/ws_client.cpp \
	websockets/client/ws_client_wspp.cpp \


TARGET_LIB:=libcpprest

TARGET_LIB_SHARED:=$(TARGET_LIB).so
TARGET_LIB_STATIC:=$(TARGET_LIB).a
		 
LOCAL_ALL:=

LIBS:= -lpthread -lboost_random -lboost_system -lboost_thread -lboost_filesystem -lboost_chrono -lboost_atomic -lboost_date_time -lboost_regex /usr/lib/libssl.so /usr/lib/libcrypto.so /usr/lib/libz.so

include $(ROOT_DIR)/Makefile.post

