#/bin/bash

# metapackage called 
#		build-essential 
# which should install the compiler and a bunch of 
# related/needed packages

sudo apt-get -y \
	install \
		build-essential
	
sudo apt-get -y \
	update
	
sudo \
	yum -y \
		install \
			autoconf \
			libtool \
			automake \
			gettext 
			gcc-4.6-base \
			cpp-4.6 \
			libc6-dev \
			libgomp1 \
			libquadmath0 \


#			monodevelop-current
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

# After this you will have monodevelop installed in the /opt/monodevelop. 
# To start the IDE use the following script:


	
