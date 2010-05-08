#!/usr/bin/env python
#coding:utf-8
# Author:  mozman
# Purpose:
# Created: 08.05.2010

cdef extern from "ctrees.h":
    ctypedef struct PyObject:
        pass

    ctypedef struct node_t:
        node_t *link[2]
        PyObject *key
        PyObject *value

    void ct_delete_tree(node_t *root)
    node_t *ct_find_node(node_t *root, object key, object cmp)
    PyObject *ct_get_item(node_t *root, object key, object cmp)
    int ct_bintree_insert(node_t **root, object key, object value, object cmp)
    int ct_bintree_remove(node_t **root, object key, object cmp)
