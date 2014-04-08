AM_CPPFLAGS = -I@top_srcdir@

AM_CFLAGS = \
    @LIBEVENT_CFLAGS@ \
    @LIBCURL_CFLAGS@ \
    @OPENSSL_CFLAGS@ \
    @ZLIB_CFLAGS@ \
    @PTHREAD_CFLAGS@

AM_LDFLAGS = \
    @ZLIB_LDFLAGS@

bin_PROGRAMS = \
    leechmission-create \
    leechmission-edit \
    leechmission-show

leechmission_create_SOURCES = create.c
leechmission_edit_SOURCES = edit.c
leechmission_show_SOURCES = show.c

dist_man_MANS = \
    leechmission-create.1 \
    leechmission-edit.1 \
    leechmission-show.1

leechmission_create_LDADD = \
    $(top_builddir)/libleechmission/libleechmission.a \
    @LIBUPNP_LIBS@ \
    @LIBNATPMP_LIBS@ \
    @INTLLIBS@ \
    @DHT_LIBS@ \
    @LIBUTP_LIBS@ \
    @LIBEVENT_LIBS@ \
    @LIBCURL_LIBS@ \
    @OPENSSL_LIBS@ \
    @ZLIB_LIBS@ \
    @PTHREAD_LIBS@
leechmission_edit_LDADD = $(leechmission_create_LDADD)
leechmission_show_LDADD = $(leechmission_create_LDADD)
