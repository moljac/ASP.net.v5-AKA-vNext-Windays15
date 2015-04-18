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
		

# ppa:keks9n/monodevelop-latest 
# seems to be outdated.

# to use the latest version ( 4.2.2+ ) with the latest runtime and so on, 
# use this new ppa:

sudo add-apt-repository ppa:ermshiperete/monodevelop
sudo apt-get -y\
	update
sudo apt-get -y \
	install \
	monodevelop-current

mono -V

# After this you will have monodevelop installed in the /opt/monodevelop. 
# To start the IDE use the following script:

/opt/monodevelop/bin/monodevelop-launcher.sh		
			
