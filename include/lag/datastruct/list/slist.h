/*
 * Copyright (c) 2025 Dominik Chat
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef _LAG_SLIST_H_
#define _LAG_SLIST_H_

#include <stdbool.h>

struct _slist_node {
	struct _slist_node *next;
};

typedef struct _slist_node lag_snode_t;

struct _slist {
	lag_snode_t *head;
	lag_snode_t *tail;
};

typedef struct _slist lag_slist_t;

#define LAG_SNODE_STATIC_INIT(name)	\
	lag_snode_t name = {		\
		.next = NULL		\
	}

#define LAG_SLIST_STATIC_INIT(name)	\
	lag_slist_t name = {		\
		.head = NULL,		\
		.tail = NULL		\
	}

void lag_snode_init(lag_snode_t *node);

lag_snode_t *lag_snode_peek_next(lag_snode_t *node);

void lag_slist_init(lag_slist_t *list);

lag_snode_t *lag_slist_peek_head(lag_slist_t *list);

lag_snode_t *lag_slist_peek_tail(lag_slist_t *list);

bool lag_slist_is_empty(lag_slist_t *list);

void lag_slist_prepend(lag_slist_t *list, lag_snode_t *node);

void lag_slist_append(lag_slist_t *list, lag_snode_t *node);

void lag_slist_insert(lag_slist_t *list, lag_snode_t *prev, lag_snode_t *node);

void lag_slist_remove_head(lag_slist_t *list);

void lag_slist_remove(lag_slist_t *list, lag_snode_t *prev, lag_snode_t *node);

lag_snode_t *lag_slist_fetch(lag_slist_t *list);

void lag_slist_merge(lag_slist_t *base, lag_slist_t *list);

#endif /* _LAG_SLIST_H_ */
