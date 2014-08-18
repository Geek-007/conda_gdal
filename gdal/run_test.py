import osgeo._gdal
import osgeo._gdalconst
import osgeo._ogr
import osgeo._osr
import osgeo
import gdal
import gdalconst
import ogr
import osr

print( "OGR Vector drivers")
print("==================")
cnt = ogr.GetDriverCount()
for i in range(cnt):
    print(ogr.GetDriver(i).GetName())

print ("GDAL Raster drivers")
print ("===================")
cnt = gdal.GetDriverCount()
for i in xrange(cnt):
    print (gdal.GetDriver(i).LongName)

print ("Total number of vector drivers: %d" % ogr.GetDriverCount())
print ("Total number of vector drivers: %d" % gdal.GetDriverCount())


import os1_hw
