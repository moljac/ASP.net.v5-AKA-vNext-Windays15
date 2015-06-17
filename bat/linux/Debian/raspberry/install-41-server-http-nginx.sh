#!/bin/bash

# First install the nginx package
sudo apt-get install \
	nginx

# start the server with:
sudo \
	/etc/init.d/nginx start