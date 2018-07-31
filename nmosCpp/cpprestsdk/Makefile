# $Id$

# released or debug version, different on debug and log info£¬2007.03.15
# must be 'release' or 'debug'
EDITION=debug
EDITION=release

MODULE=nmos

# default: build all as plugins
ifeq ($(PLUGINS),NO)

else
	PLUGINS=YES
endif


ROOT_DIR:=$(shell pwd)
RULE_DIR:=$(ROOT_DIR)/../

# conditional build options: X86/ARM, Player/Server/Web


export ROOT_DIR
export RULE_DIR

export HISI_LINUX_ENV=ok
export EDITION
export PLUGINS


ifeq ($(CFG_HI_EXPORT_FLAG),)
NEW_SDK_DIR := $(NEW_SDK)
SDK_DIR := $(NEW_SDK_DIR)
include $(NEW_SDK_DIR)/base.mak
endif

RELEASES_NAME=$(MODULE)_$(GCC_VERSION)_$(ARCH)_$(EDITION)_$(BUILDTIME).zip
#.tar.gz  

export ARCH
export BUILDTIME
export RELEASES_NAME

include $(RULE_DIR)/Rules.mak


	SUBDIRS += src



all: 
	for i in $(SUBDIRS) ; do ( cd $$i && $(MAKE) $@ ) ; done

clean: 
	rm -rf $(MODULE)_*
	rm -rf pkg
	rm -rf Linux.bin.* 
	rm -rf *.ts
	rm -rf *.m3u8
	rm -rf *.log
	- find . -name Linux.obj.* -prune -exec rm -r -f {} \;
	
# all	
install:
	@$(SHELL) $(ROOT_DIR)/buildver.sh $(ROOT_DIR)
	@$(SHELL) $(ROOT_DIR)/install.sh $(ROOT_DIR)/Linux.bin.$(ARCH) $(ROOT_DIR)/releases  

#	@$(SHELL) $(ROOT_DIR)/buildver.sh $(ROOT_DIR)

package:clean
	cd ..; tar -cvjf $(MODULE).$(BUILDTIME).tar.bz2 $(MODULE)
			
