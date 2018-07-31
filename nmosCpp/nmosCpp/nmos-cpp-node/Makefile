#
# $Author$
#


include $(RULE_DIR)/Rules.mak

C_FLAGS += $(SHARED_CFLAGS)

SRC:= \
		main.cpp \
		


CODE_SUBDIRS = .

LOCAL_ALL := \
		nmNode \
		

include $(ROOT_DIR)/Makefile.post


# -lboost -lcpprest 


#LDFLAGS += -lz -lpthread -lm


nmNode:$(OBJS)
	$(CXX) -s -o $@ $^ $(LDFLAGS) $(EXE_LIBS)
	$(MOVE) $@ $(BIN_DIR)/usr/bin  

