# st version
VERSION = 0.7

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11

# includes and libs
INCS = -I$(X11INC) \
       `pkg-config --cflags fontconfig` \
       `pkg-config --cflags freetype2`
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft \
       `pkg-config --libs fontconfig` \
       `pkg-config --libs freetype2`

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_XOPEN_SOURCE=600
CFLAGS += -march=native -g -std=c99 -pedantic -Wall -Wvariadic-macros -O2
LDFLAGS += -g
STCFLAGS = $(INCS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) $(LDFLAGS)

# compiler and linker
# CC = c99

