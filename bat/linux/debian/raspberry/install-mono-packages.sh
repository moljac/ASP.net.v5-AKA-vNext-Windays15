


sudo apt-get -y \
	update
sudo apt-get -y \
	upgrade

sudo apt-get -y \
	install \
	mono-complete

mono -V
	
mozroots --import --ask-remove --machine