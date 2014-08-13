#!/bin/bash
./configure --with-python --prefix=$PREFIX \
--with-geos=$PREFIX/bin/geos-config \
--with-static-proj4=$PREFIX \
--with-hdf5=no \
--with-hdf4=$PREFIX \
--with-xerces=$PREFIX \
--without-pam \
--with-python \
--with-jpeg=no \
--with-gif=no \
--with-png=no \
--disable-rpath
make clean
./configure --with-python --prefix=$PREFIX \
--with-geos=$PREFIX/bin/geos-config \
--with-static-proj4=$PREFIX \
--with-hdf5=no \
--with-hdf4=$PREFIX \
--with-xerces=$PREFIX \
--without-pam \
--with-python \
--with-jpeg=no \
--with-gif=no \
--with-png=no \
--disable-rpath
make -j 12
make install

# Copy data files 
mkdir -p $PREFIX/share/gdal/
cp data/*csv $PREFIX/share/gdal/
cp data/*wkt $PREFIX/share/gdal/

