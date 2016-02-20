PROG=	fsnotifier
SRCS=	inotify.c main.c util.c

CSTD=	c11
CFLAGS+=	-Wall -Wextra -Wpedantic -D_DEFAULT_SOURCE
# For libinotify
CFLAGS+=	-I/usr/local/include
LDFLAGS+=	-L/usr/local/lib -linotify

MAN=

.include <bsd.prog.mk>
