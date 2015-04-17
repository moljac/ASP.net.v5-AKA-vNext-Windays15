#!/bin/bash


# sudo apt-get -y install \
#	git \
#	autoconf libtool automake \
#	gettext \
#	build-essential \
#	mono-devel \
		
sudo apt-get -y install \
	autoconf libtool automake \
	gettext \
	mono-devel \
		
		
sudo apt-get -y install \
	git \
	autoconf libtool automake \
	gettext \
	build-essential \
	mono-devel \
		
	
git clone https://github.com/mono/mono.git
cd mono
./autogen.sh --prefix=$PREFIX
make

# installation through packages
# make install	
