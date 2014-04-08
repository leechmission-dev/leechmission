TARGET = leechmission-qt
NAME = "Leechmission"
DESCRIPTION = "Leechmission: a fast, easy, and free BitTorrent client"
VERSION = 2.81
LICENSE = "GPL"

target.path = /bin
INSTALLS += target

unix: INSTALLS += man
man.path = /share/man/man1/
man.files = leechmission-qt.1

CONFIG += qt thread debug link_pkgconfig
QT += network dbus widgets
PKGCONFIG = fontconfig libcurl openssl libevent

LEECHMISSION_TOP = ..

include(config.pri) 

INCLUDEPATH = $${EVENT_TOP}/include $${INCLUDEPATH}
INCLUDEPATH += $${LEECHMISSION_TOP}
LIBS += $${LEECHMISSION_TOP}/libleechmission/libleechmission.a
LIBS += $${LIBUTP_LIBS}
LIBS += $${LEECHMISSION_TOP}/third-party/dht/libdht.a
LIBS += $${LIBUPNP_LIBS}
LIBS += $${LIBNATPMP_LIBS}
unix: LIBS += -L$${EVENT_TOP}/lib -lz -lrt
win32:DEFINES += QT_DBUS
win32:LIBS += -levent-2.0 -lws2_32 -lintl
win32:LIBS += -lidn -liconv -lwldap32 -liphlpapi

TRANSLATIONS += translations/leechmission_en.ts \
                translations/leechmission_es.ts \
                translations/leechmission_eu.ts \
                translations/leechmission_fr.ts \
                translations/leechmission_kk.ts \
                translations/leechmission_lt.ts \
                translations/leechmission_pt_BR.ts \
                translations/leechmission_ru.ts \
                translations/leechmission_hu.ts

FORMS += mainwin.ui
RESOURCES += application.qrc
SOURCES += about.cc \
           add-data.cc \
           app.cc \
           dbus-adaptor.cc \
           details.cc \
           favicon.cc \
           file-tree.cc \
           filterbar.cc \
           filters.cc \
           freespace-label.cc \
           formatter.cc \
           hig.cc \
           license.cc \
           mainwin.cc \
           make-dialog.cc \
           options.cc \
           prefs.cc \
           prefs-dialog.cc \
           relocate.cc \
           session.cc \
           session-dialog.cc \
           squeezelabel.cc \
           stats-dialog.cc \
           torrent.cc torrent-delegate.cc \
           torrent-delegate-min.cc \
           torrent-filter.cc \
           torrent-model.cc \
           tracker-delegate.cc \
           tracker-model.cc \
           tracker-model-filter.cc \
           triconpushbutton.cc \
           utils.cc \
           watchdir.cc
HEADERS += $$replace(SOURCES, .cc, .h)
HEADERS += speed.h types.h

win32:RC_FILE = qtr.rc
