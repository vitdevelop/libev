#!/bin/bash

wget cvs.schmorp.de/libev/?view=tar -O libev.tar.gz
tar -zxf libev.tar.gz
cd libev
wget http://cvs.schmorp.de/libecb/ecb.h
sed -i 's/~\/src\/libecb/./g' update_ev_c
bash update_ev_c
bash autogen.sh
bash configure
# optionally make

cd -
