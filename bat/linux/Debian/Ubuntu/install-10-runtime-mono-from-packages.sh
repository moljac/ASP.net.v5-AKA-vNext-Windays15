#!/bin/bash

sudo \
	apt-get -y \
		remove \
			mono-complete \
			mono-devel \
			monodevelop-current

sudo \
	apt-get -y \
		autoremove \
			mono-complete \
			mono-devel \
			monodevelop-current

mono -v

# NOTE: needed for newest mono!!
sudo apt-key adv \
	--keyserver keyserver.ubuntu.com \
	--recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	
echo "deb http://download.mono-project.com/repo/debian wheezy main" \
	| \
	sudo tee /etc/apt/sources.list.d/mono-xamarin.list

sudo \
	apt-get \
		update
	
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main"\
	| \
	sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list

sudo \
	apt-get -y \
		install \
			autoconf \
			libtool \
			automake \
			gettext 
		
#===============================================================================
# http://www.mono-project.com/docs/getting-started/install/linux/		
#
# 
# package names:
#	mono-devel 
#		to compile code.
#
# 	mono-complete 
#		to install everything
#		this should cover most cases of “assembly not found” errors.
#
# 	referenceassemblies-pcl 
#		for PCL compilation support
#		this will resolve most cases of “Framework not installed: .NETPortable” 
#		errors during software compilation.
#
#	ca-certificates-mono 
#		to get SSL certificates for HTTPS connections
#		if ran into trouble making HTTPS connections.

sudo \
	apt-get -y \
		install \
			mono-devel \
			mono-complete \
			referenceassemblies-pcl \
			

mono -V
		
		


