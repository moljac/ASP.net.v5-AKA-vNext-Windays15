#!/bin/bash


		
PREFIX=/opt/mono	
rm -fr ./mono
git clone https://github.com/mono/mono.git
cd mono
./autogen.sh --prefix=$PREFIX
make

# installation through packages
# make install	
