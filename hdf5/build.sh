#!/bin/bash

./configure --prefix=$PREFIX --enable-linux-lfs --with-zlib --with-ssl
make -j6
make install

rm -rf $PREFIX/share/hdf5_examples
