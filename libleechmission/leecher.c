/*
 * This file Copyright (C) Wojciech Macek (wojciech.macek@gmail.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2
 * as published by the Free Software Foundation.
 *
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 */

#include <assert.h>
#include <errno.h> /* ENOENT */
#include <stdlib.h>
#include <string.h> /* memcpy */

#include <signal.h>
#include <sys/types.h> /* stat (), umask () */
#include <sys/stat.h> /* stat (), umask () */
#include <unistd.h> /* stat */
#include <dirent.h> /* opendir */

#include <event2/dns.h> /* evdns_base_free () */
#include <event2/event.h>

#include <libutp/utp.h>

//#define TR_SHOW_DEPRECATED
#include "leechmission.h"
#include "announcer.h"
#include "bandwidth.h"
#include "blocklist.h"
#include "cache.h"
#include "crypto.h"
#include "fdlimit.h"
#include "list.h"
#include "log.h"
#include "net.h"
#include "peer-io.h"
#include "peer-mgr.h"
#include "platform.h" /* tr_lock, tr_getTorrentDir () */
#include "platform-quota.h" /* tr_device_info_free() */
#include "port-forwarding.h"
#include "rpc-server.h"
#include "session.h"
#include "stats.h"
#include "torrent.h"
#include "tr-dht.h" /* tr_dhtUpkeep () */
#include "tr-udp.h"
#include "tr-utp.h"
#include "tr-lpd.h"
#include "trevent.h"
#include "utils.h"
#include "variant.h"
#include "verify.h"
#include "version.h"
#include "web.h"

bool
tr_leecher_do_reject(tr_session *session, tr_leecher_option_e option)
{
    if (!session)
        return false;

    if (session->leecher_mask & (unsigned int)option)
        return true;

    return false;
}

