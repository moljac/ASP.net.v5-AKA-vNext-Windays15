#!/bin/bash

# for problems with certificates
#	raspberry pi curl: (60) SSL certificate problem: certificate is not yet valid
#
# check datetime!! 
# raspbberry was in the past 2014 and it was windays 2015

date +%Y%m%d -s "20150420"
date +%T -s "12:12:13"


mkdir asp.net.v5.vNext
cd asp
cd asp.net.v5.vNext/



curl -v --capath /etc/ssl/certs/ "https://raw.githubusercontent.com"

rm -f *.sh
ls -al

curl \
	-v \
	-O \
	-k \
    -sSL \
    https://raw.githubusercontent.com/aspnet/Home/master/kvminstall.sh

	
curl \
	-v \
	-O \
	-k \
    -sSL \
    https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh 

		
ls -al
