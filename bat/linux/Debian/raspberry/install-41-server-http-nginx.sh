#!/bin/bash

# First install the nginx package
sudo apt-get -y \
	install  \
		nginx

		
# Create cache directory for Nignx webserver:

sudo \
	mkdir /var/cache/nginx
sudo \
	chown www-data:www-data /var/cache/nginx	
		
# start the server with:
sudo \
	/etc/init.d/nginx start
	
ifconfig eth0 | grep inet | awk '{ print $2}'
 
# make nginx service/deamon to be default service (started at boot time)
sudo \
	update-rc.d nginx defaults

# reboot to see if nginx starts
sudo \
	reboot
	
	
	