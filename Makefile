PROG=	fsnotifier
SRCS=	inotify.c main.c util.c
MAN=
CSTD=	c99

CFLAGS+=	-Wall -Wextra -D_DEFAULT_SOURCE

CFLAGS+=	-std=${CSTD} -I/usr/local/include${INOTIFY}
LDFLAGS+=	-L/usr/local/lib${INOTIFY} -Wl,-rpath=/usr/local/lib${INOTIFY}
LDFLAGS+=	-pthread

OS!=	uname -s
.if ${OS} == "OpenBSD"
INOTIFY?=	/inotify
.endif

.if defined(STATIC_INOTIFY)
LDADD=	/usr/local/lib${INOTIFY}/libinotify.a
.else
LDFLAGS+=	-linotify
.endif

.include <bsd.prog.mk>
