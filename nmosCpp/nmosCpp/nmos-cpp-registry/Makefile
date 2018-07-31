#
# $Author$
#


include $(RULE_DIR)/Rules.mak

C_FLAGS += $(SHARED_CFLAGS)

SRC:= \
		main.cpp \
		


CODE_SUBDIRS = .

LOCAL_ALL := \
		nmRDS \
		

include $(ROOT_DIR)/Makefile.post



nmRDS:$(OBJS)
	$(CXX) -s -o $@ $^ $(LDFLAGS) $(EXE_LIBS)
	$(MOVE) $@ $(BIN_DIR)/usr/bin  

