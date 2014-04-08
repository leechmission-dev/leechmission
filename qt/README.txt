VOLUNTEERS WANTED

   - Qt developers and translators are needed
   - If you find a bug, please report it at http://trac.leechmissionbt.com/
    
ABOUT LEECHMISSION-QT

   Leechmission-qt is a GUI for Leechmission loosely based on the GTK+ client.

   This is the only Leechmission client that can act as its own self-contained
   session (as the GTK+ and Mac clients do), and can also connect to a remote
   session (as the web client and leechmission-remote terminal client do).

   Use Case 1: If you like to run BitTorrent for awhile from your desktop,
   then the Mac, GTK+, and Qt clients are a good match.

   Use Case 2: If you like to leave BitTorrent running nonstop on your
   computer or router, and want to control it from your desktop or
   from a remote site, then leechmission-remote and the web and Qt clients
   are a good match.

   To use the Qt client as a remote, in the menu go to Edit > Change Session

   The Qt client is also the most likely to wind up running on Windows,
   though that's not a high priority at the moment...

BUILDING ON WINDOWS

   rb07 has a writeup of this on the Leechmission wiki:
   https://trac.leechmissionbt.com/wiki/BuildingLeechmissionQtWindows

BUILDING ON OS X

   nnc has a writeup of this on the Leechmission wiki:
   https://trac.leechmissionbt.com/wiki/BuildingLeechmissionQtMac

BUILDING ON UNIX

   1. Prerequisites: Qt >= 5 and its development packages
   2. Build Leechmission as normal
   3. In the qt/ directory, type "qmake qtr.pro" or "qmake-qt5 qtr.pro"
   4. In the qt/ directory, type "make"
   5. In the qt/ directory, as root, type "INSTALL_ROOT=/usr make install"
      (Feel free to replace /usr with /usr/local or /opt or whatever)
 
