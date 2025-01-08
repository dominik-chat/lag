/*
 * Copyright (c) 2025 Dominik Chat
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#include <stddef.h>

#include "lag/datastruct/list/slist.h"

void lag_snode_init(lag_snode_t *node)
{
	node->next = NULL;
}

lag_snode_t *lag_snode_peek_next(lag_snode_t *node)
{
	return node->next;
}

void lag_slist_init(lag_slist_t *list)
{
	list->head = NULL;
	list->tail = NULL;
}

lag_snode_t *lag_slist_peek_head(lag_slist_t *list)
{
	return list->head;
}

lag_snode_t *lag_slist_peek_tail(lag_slist_t *list)
{
	return list->tail;
}

bool lag_slist_is_empty(lag_slist_t *list)
{
	return !(list->head || list->tail);
}

void lag_slist_prepend(lag_slist_t *list, lag_snode_t *node)
{
	node->next = list->head;
	list->head = node;
}

void lag_slist_append(lag_slist_t *list, lag_snode_t *node)
{
	if (lag_slist_is_empty(list)) {
		lag_slist_prepend(list, node);
		return;
	}

	if (list->tail) {
		list->tail->next = node;
	}

	list->tail = node;
}

void lag_slist_insert(lag_slist_t *list, lag_snode_t *prev, lag_snode_t *node)
{
	if (lag_slist_is_empty(list) || !prev) {
		lag_slist_prepend(list, node);
		return;
	}

	if (list->tail == prev) {
		list->tail = node;
	}

	node->next = prev->next;
	prev->next = node;
}

void lag_slist_remove_head(lag_slist_t *list)
{
	if (!list->head) {
		return;
	}

	if (list->head->next) {
		list->head = list->head->next;
		if (list->head == list->tail) {
			list->tail = NULL;
		}
	} else {
		list->head = NULL;
	}
}

void lag_slist_remove(lag_slist_t *list, lag_snode_t *prev, lag_snode_t *node)
{
	if (!prev) {
		lag_slist_remove_head(list);
		return;
	}

	if (list->tail == node) {
		list->tail = prev;
		prev->next = NULL;
	}

	prev->next = node->next;
}

lag_snode_t *lag_slist_fetch(lag_slist_t *list)
{
	lag_snode_t *tmp;

	if (lag_slist_is_empty(list)) {
		return NULL;
	}

	tmp = lag_slist_peek_head(list);
	lag_slist_remove_head(list);

	return tmp;
}

void lag_slist_merge(lag_slist_t *base, lag_slist_t *list)
{
	if (lag_slist_is_empty(list)) {
		return;
	}

	if (lag_slist_is_empty(base)) {
		base->head = list->head;
		base->tail = list->tail;
	}

	if (!base->tail) {
		base->head->next = list->head;
	} else {
		base->tail->next = list->head;
	}

	if (!list->tail) {
		base->tail = list->head;
	} else {
		base->tail = list->tail;
	}
}
