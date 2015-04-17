#/bin/bash

# install Homebrew
ruby \
	-e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"




##
# Install autoconf, automake and libtool smoothly on Mac OS X.
# Newer versions of these libraries are available and may work better on OS X
#
# This script is originally from http://jsdelfino.blogspot.com.au/2012/08/autoconf-and-automake-on-mac-os-x.html
#
 

brew info autoconf
brew info automake
brew info libtool
brew info gettext

brew search autoconf
brew search automake
brew search libtool 
brew search gettext 

brew list autoconf
brew list automake
brew list libtool 
brew list gettext 
		
brew install autoconf
brew install automake
brew install libtool 
brew install gettext 
		
		
		
		
port installed
port installed requested
		
sudo port \
	install \
		autoconf \ 
		automake \
		libtool 

 
 
export build=~/devtools # or wherever you'd like to build
mkdir -p $build
 
##
# Autoconf
# http://ftpmirror.gnu.org/autoconf
 
cd $build
curl -OL http://ftpmirror.gnu.org/autoconf/autoconf-2.68.tar.gz
tar xzf autoconf-2.68.tar.gz
cd autoconf-2.68
./configure --prefix=/usr/local
make
sudo make install
export PATH=/usr/local/bin
 
##
# Automake
# http://ftpmirror.gnu.org/automake
 
cd $build
curl -OL http://ftpmirror.gnu.org/automake/automake-1.11.tar.gz
tar xzf automake-1.11.tar.gz
cd automake-1.11
./configure --prefix=/usr/local
make
sudo make install
 
##
# Libtool
# http://ftpmirror.gnu.org/libtool
 
cd $build
curl -OL http://ftpmirror.gnu.org/libtool/libtool-2.4.tar.gz
tar xzf libtool-2.4.tar.gz
cd libtool-2.4
./configure --prefix=/usr/local
make
sudo make install
 
echo "Installation complete."	