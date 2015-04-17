#!/bin/bash
		
rm -fr ./mono

PREFIX=/opt/mono	
git clone https://github.com/mono/mono.git
cd mono

# configure: error: msgfmt not found. 
# need to install the 'gettext' package, or pass --enable-nls=no to configure.

./autogen.sh --prefix=$PREFIX --enable-nls=no

make
./runtime/_tmpinst/bin/mono -V


# installation through packages
# make install	
