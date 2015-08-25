#****************************************************************************#
#						MAKEFILE LIBSOCKET SHARED LIBRARY				     #
#****************************************************************************#

# C COMPILER
CC = gcc
# C FLAGS
CFLAGS = -fPIC -Wall -Wextra -O2 -g
# LINKING FLAGS
LDFLAGS = -shared
# RM COMAND
RM = rm -f
#TARGET LIB NAME
TARGET_LIB = libsocket.so

#SOURCE & OBJECT FILES
SRCS = libsocket.c
OBJS = $(SRCS:.c=.o)

#REPOSITIONING
#HOME_DIR = $HOME
#cd HOME_DIR

# LD ENVIRONMENT VARIABLE CONFIGURATION
LD_DIR_PATH = export LD_LIBRARY_PATH=$(HOME_DIR)/libsocket/
LD_CONFIG = ldconfig 

#COMPILATION RULES
.PHONY: all
all: ${TARGET_LIB} clean install

$(TARGET_LIB): $(OBJS)
	$(CC) ${LDFLAGS} -o $@ $^

$(SRCS:.c=.d):%.d:%.c
	$(CC) $(CFLAGS) -MM $< >$@

include $(SRCS:.c=.d)

.PHONY: clean
clean:
	-${RM} ${OBJS} $(SRCS:.c=.d)

.PHONY: install
install: 
	export LD_LIBRARY_PATH=$(HOME_DIR)/libsocket/
	ldconfig -n $(HOME_DIR)/libsocket/
