/*
 * This file Copyright (C) Wojciech Macek (wojciech.macek@gmail.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2
 * as published by the Free Software Foundation.
 *
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 */

#ifndef LEECHER_H_
#define LEECHER_H_

#include "leechmission.h"

typedef enum {
	TR_LEECHER_OPTION_NORMAL = 0,
	TR_LEECHER_OPTION_REJECT_REQUEST = (1 << 1),
	TR_LEECHER_OPTION_BLOCK_DATA_BLOCKS = (1 << 2),
	TR_LEECHER_OPTION_BLOCK_METADATA = (1 << 4),
	TR_LEECHER_OPTION_BLOCK_HAVE = (1 << 5),
	TR_LEECHER_OPTION_FAKE_SIZE = (1 << 6),
	TR_LEECHER_OPTION_BLOCK_ANNOUNCING = (1 << 7),
} tr_leecher_option_e;

bool tr_leecher_do_reject(tr_session *session,
        tr_leecher_option_e option);

#endif /* LEECHER_H_ */
