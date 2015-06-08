#/bin/bash

# metapackage called 
#		build-essential 
# which should install the compiler and a bunch of 
# related/needed packages

sudo apt-get -y \
	install \
		git \
		autoconf \
		automake \
		gettext \
		libtool \
		build-essential
	
sudo apt-get -y \
	update
	
sudo apt-get -y \
	install \
		gcc-4.6-base \
		cpp-4.6 \
		libc6-dev \
		libgomp1 \
		libquadmath0


# glibc problems with certificates	
ldd --version    
sudo \
	dpkg -l | grep libc6

sudo \
	apt-get update
sudo \
	apt-get dist-upgrade
	
	
