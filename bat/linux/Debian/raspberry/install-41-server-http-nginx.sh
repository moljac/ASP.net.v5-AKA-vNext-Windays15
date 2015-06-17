#!/bin/bash

# First install the nginx package
sudo apt-get -y \
	install  \
		nginx

# start the server with:
sudo \
	/etc/init.d/nginx start
	
	
# make nginx service/deamon to be default service (started at boot time)
sudo \
	update-rc.d nginx defaults

# reboot to see if nginx starts
sudo \
	reboot