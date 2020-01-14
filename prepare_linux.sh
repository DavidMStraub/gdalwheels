#!/bin/bash
yum -y install wget zlib-devel
wget https://github.com/OSGeo/gdal/releases/download/3.0.3/gdal-3.0.3.tar.gz
wget https://github.com/OSGeo/PROJ/releases/download/6.3.0/proj-6.3.0.tar.gz
tar -xzf gdal-3.0.3.tar.gz 
tar -xzf proj-6.3.0.tar.gz 
cd proj-6.3.0
./configure 
make
make install
cd ../gdal-3.0.3
./configure 
make
make install
