AM_CPPFLAGS = -I@top_srcdir@

AM_CFLAGS = \
    @LIBEVENT_CFLAGS@ \
    @OPENSSL_CFLAGS@ \
    @LIBCURL_CFLAGS@ \
    @ZLIB_CFLAGS@ \
    @PTHREAD_CFLAGS@

AM_LDFLAGS = \
    @ZLIB_LDFLAGS@

bin_PROGRAMS = leechmission-cli

dist_man_MANS = leechmission-cli.1

leechmission_cli_SOURCES = cli.c

leechmission_cli_LDADD = \
    $(top_builddir)/libleechmission/libleechmission.a \
    @LIBNATPMP_LIBS@ \
    @LIBUPNP_LIBS@ \
    @DHT_LIBS@ \
    @LIBUTP_LIBS@ \
    @LIBEVENT_LIBS@ \
    @LIBCURL_LIBS@ \
    @OPENSSL_LIBS@ \
    @INTLLIBS@ \
    @ZLIB_LIBS@ \
    @PTHREAD_LIBS@

