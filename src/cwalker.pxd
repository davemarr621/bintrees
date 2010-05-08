#!/usr/bin/env python
#coding:utf-8
# Author:  mozman
# Purpose:
# Created: 08.05.2010

from ctrees cimport node_t
from stack cimport node_stack_t

cdef class cWalker:
    cdef node_t *node
    cdef node_t *root
    cdef node_stack_t *stack
    cdef object compare

    cdef void set_tree(self, node_t *root, object compare)
    cpdef reset(self)
    cpdef push(self)
    cpdef pop(self)
