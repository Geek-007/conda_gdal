#!/bin/bash

./configure --prefix=$PREFIX
make -j6
make install

