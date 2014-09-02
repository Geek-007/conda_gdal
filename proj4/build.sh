#!/bin/bash

./configure --prefix=$PREFIX --without-jni
make -j 12
make install
