#!/usr/bin/env python
#coding:utf-8
# Author:  mozman
# Purpose: test binary trees
# Created: 28.04.2010

import unittest

from tree_test import TestAbstTree
from bintrees import BinaryTree

class TestBinaryTree(TestAbstTree):
    @property
    def TREE(self):
        return BinaryTree

if __name__=='__main__':
    unittest.main()