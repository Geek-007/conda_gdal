#!/bin/sh

./configure --prefix=$PREFIX

make -j6
make install

