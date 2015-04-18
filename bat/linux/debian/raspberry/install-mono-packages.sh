#!/bin/bash

sudo apt-get -y \
	update
sudo apt-get -y \
	upgrade

sudo apt-get -y \
	install \
	mono-complete

mono -V
	
../../install-mono-niget-certificates.sh
