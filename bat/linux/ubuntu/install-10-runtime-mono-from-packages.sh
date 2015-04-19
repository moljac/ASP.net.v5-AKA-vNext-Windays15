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
			gettext \
			mono-devel \
			mono-complete \
			monodevelop-current

mono -V
		
		

# ppa:keks9n/monodevelop-latest 
# seems to be outdated.

# to use the latest version ( 4.2.2+ ) with the latest runtime and so on, 
# use this new ppa:

# sudo add-apt-repository ppa:ermshiperete/monodevelop
# sudo apt-get -y\
#	update
# sudo apt-get -y \
#	install \
#	monodevelop-current

# mono -V

# After this you will have monodevelop installed in the /opt/monodevelop. 
# To start the IDE use the following script:



