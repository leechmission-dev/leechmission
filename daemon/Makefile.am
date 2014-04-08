AM_CPPFLAGS = -I@top_srcdir@ -DEMBEDDED

AM_CFLAGS = \
    @LIBEVENT_CFLAGS@ \
    @OPENSSL_CFLAGS@ \
    @LIBCURL_CFLAGS@ \
    @SYSTEMD_DAEMON_CFLAGS@ \
    @ZLIB_CFLAGS@ \
    @PTHREAD_CFLAGS@

AM_LDFLAGS = \
    @ZLIB_LDFLAGS@

EXTRA_DIST = \
    leechmission-daemon.service

dist_man_MANS = \
    leechmission-daemon.1 \
    leechmission-remote.1

bin_PROGRAMS = \
    leechmission-daemon \
    leechmission-remote

LDADD = \
    $(top_builddir)/libleechmission/libleechmission.a \
    @LIBUPNP_LIBS@ \
    @LIBNATPMP_LIBS@ \
    @DHT_LIBS@ \
    @LIBUTP_LIBS@ \
    @LIBEVENT_LIBS@ \
    @LIBCURL_LIBS@ \
    @OPENSSL_LIBS@ \
    @INTLLIBS@ \
    @SYSTEMD_DAEMON_LIBS@ \
    @ZLIB_LIBS@ \
    @PTHREAD_LIBS@

noinst_HEADERS = \
    watch.h

leechmission_daemon_SOURCES = daemon.c watch.c
leechmission_remote_SOURCES = remote.c
