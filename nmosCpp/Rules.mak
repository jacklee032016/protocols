# rule for every directory

# support PC environments
ARCH=X86
# ARCH=arm

ifeq ($(ARCH),X86)
else
	ARCH=arm
endif

#################   init Hisilicon build environment
ifeq ($(CFG_HI_EXPORT_FLAG),)
	NEW_SDK_DIR := $(NEW_SDK)
	SDK_DIR := $(NEW_SDK_DIR)
	include $(NEW_SDK_DIR)/base.mak
endif



ifeq ($(EDITION),release)
	C_FLAGS += -D__CMN_RELEASE__
else	
endif 


ifeq ($(ARCH),arm)
	C_FLAGS += -D__ARM_CMN__=1 -DARCH_ARM=1  -DARCH_X86=0 -DARCH_X86_32=0 
	CXXFLAGS = -D__ARM_CMN__=1 -DARCH_ARM=1  -DARCH_X86=0 -DARCH_X86_32=0 
	CROSS_COMPILER=arm-histbv310-linux-
	LDFLAGS+=  
	flag=
	C_FLAGS +=-DARM
	
else
	ARCH=X86
	C_FLAGS +=-D$(ARCH) -DARCH_X86=1 -DARCH_X86_32=1 -DARCH_ARM=0 
	EXTENSION=
endif


CC	= $(CROSS_COMPILER)gcc
CXX 	= c++ 
STRIP	= $(CROSS_COMPILER)strip
LD	= $(CROSS_COMPILER)ld
RANLIB 	= $(CROSS_COMPILER)ranlib
STRIP 	= $(CROSS_COMPILER)strip
AR 	= $(CROSS_COMPILER)ar

ASM = yasm

RM	= rm -r -f
MKDIR	= mkdir -p
MODE	= 700
OWNER	= root
CHOWN	= chown
CHMOD	= chmod
COPY	= cp
MOVE	= mv

LN		= ln -sf

#BUILDTIME := $(shell TZ=UTC date -u "+%Y_%m_%d-%H_%M")
BUILDTIME := $(shell TZ=CN date -u "+%Y_%m_%d")
GCC_VERSION := $(shell $(CC) -dumpversion )

BIN_DIR=$(ROOT_DIR)/Linux.bin.$(ARCH)
OBJ_DIR=Linux.obj.$(ARCH)


CPP_REST_SDK_HOME:=$(ROOT_DIR)/../cpprestsdk

#-std=c11 
CC_CFLAGS+= -DMUX_LAB -std=c++11 -Wno-deprecated -I$(ROOT_DIR) -DBST_SHARED_MUTEX_BOOST

CC_CFLAGS+= -DCPPREST_FORCE_HTTP_CLIENT_ASIO -DCPPREST_FORCE_HTTP_LISTENER_ASIO -Dcpprest_EXPORTS 
CC_CFLAGS+= -I$(CPP_REST_SDK_HOME)/include 

REST_SDK_CC_CFLAGS+= -fno-strict-aliasing -g -fPIC -Werror -pedantic -Wall -Wextra -Wunused-parameter -Wcast-align -Wcast-qual -Wconversion -Wformat=2 \
	-Winit-self -Winvalid-pch -Wmissing-format-attribute -Wmissing-include-dirs -Wpacked -Wredundant-decls -Wunreachable-code 


CPP_REST_SDK_INCLUDE += -I/root/works/cpprestsdk-master/Release/src/pch  


CFLAGS += -DROOT_DIR='"$(ROOT_DIR)"' -I$(ROOT_DIR) $(INCLUDE_DIR) -I. -I./ 

SHARED_CFLAGS += -I$(ROOT_DIR) -DBST_SHARED_MUTEX_BOOST -I$(SHARED_HOME)/include 
SHARED_LDFLAGS += -L$(SHARED_HOME)/Linux.bin.$(ARCH)/lib -lMux -lMedia -lShared



##################################  Added for HiSilicon SoC, from sample/base.mak

#==============COMPILE OPTIONS================================================================
ifeq ($(ARCH),arm)

else 

endif

LDFLAGS := $(LDFLAGS) -L$(BIN_DIR)/lib 

EXE_LIBS:= -L$(BIN_DIR)/lib -lCppRestNmos -lMDns -lNmos -lRql -ldns_sd \
		-L$(CPP_REST_SDK_HOME)/Linux.bin.$(ARCH)/lib -lcpprest -lboost_system -lboost_thread -lssl -lcrypto -lpthread -lstdc++ -lstdc++fs

#  

#-lcommon_utilities 
