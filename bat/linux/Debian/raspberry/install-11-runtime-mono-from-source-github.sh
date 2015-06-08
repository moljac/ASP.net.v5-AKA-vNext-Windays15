#!/bin/bash

. ./install-01-dev-tools.sh
					
cd /tmp		
		
rm -fr \
	./mono/ \
	./mono-master/ \
	mono-master.zip

download_git_repo()
{
	git clone https://github.com/mono/mono.git
}

download_zip()
{
	wget https://github.com/mono/mono/archive/master.zip
	unzip master.zip mono
}	


#=======================================================================================
# In order to use mcs and mono binaries during the build process which do not 
# reside in your PATH, you can set two make variables, 
# 		EXTERNAL_MCS 
#	and 
#		EXTERNAL_RUNTIME
# 	:
# make EXTERNAL_MCS=/foo/bar/mcs EXTERNAL_RUNTIME=/somewhere/else/mono
#-----------------------------------------------------------

PREFIX=/usr/local

download_git_repo
#download_zip

cd mono
./autogen.sh --prefix=$PREFIX

#-----------------------------------------------------------
# 
# *** The compiler 'mcs' doesn't appear to be usable.
# *** You need Mono version 3.8 or better installed to build MCS
# *** Check mono README for information on how to bootstrap a Mono installation.
# *** The version of 'mcs' is: Mono C# compiler version 3.2.8.0.
# If you do not currently have mono installed, build and install mono from a 
# recently released tarball or run:
# ./autogen.sh must be run prior to this
./mono/mini/mono -V
make get-monolite-latest
./mono/mini/mono -V

#-----------------------------------------------------------
# build mono
make

./runtime/_tmpinst/bin/mono -V

# installation through packages
# make install	

../install-mono-nuget-certificates.sh
