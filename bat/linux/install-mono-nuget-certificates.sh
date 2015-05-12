#!/bin/bash


# http://www.mono-project.com/docs/faq/security/
#
# import the root certificates using the mozroots tool:
# 
# mozroots --import --ask-remove
# Note that if you are using a web application (i.e. not the current user) 
# add the --machine option like this:
# 
# mozroots --import --ask-remove --machine
# Next you need to import the intermediate certificates. 
# using the certmgr tool to connect to the SSL server. E.g.
# 
# certmgr -ssl smtps://smtp.gmail.com:465
# Use the -m option to import the certificates into the machine store if required.

SUDO=sudo
CERTMGR=/usr/local/bin/certmgr

certmgr_certificates()
{
	echo 'y' | \
		$SUDO \
		$CERTMGR -ssl -m https://go.microsoft.com
	yes  | \
		$SUDO \
		$CERTMGR -ssl https://go.microsoft.com
	
	echo 'y' | \
		$SUDO \
		$CERTMGR -ssl -m https://nuget.org
	yes  | \
		$SUDO \
		$CERTMGR -ssl https://nuget.org
	
	echo 'y' | \
		$SUDO \
		$CERTMGR -ssl -m https://nugetgallery.blob.core.windows.net
	yes  | \
		$SUDO \
		$CERTMGR -ssl https://nugetgallery.blob.core.windows.net

	echo 'y' | \
		$SUDO \
		$CERTMGR -ssl -m https://www.myget.org
	yes  | \
		$SUDO \
		$CERTMGR -ssl https://www.myget.org

	echo 'y' | \
		$SUDO \
		$CERTMGR -ssl -m https://www.myget.org/F/aspnetvnext/
	yes  | \
		$SUDO \
		$CERTMGR -ssl https://www.myget.org/F/aspnetvnext/
}

mozroots()
{
	
	# user
	sudo mozroots --import --sync 
	# sudo mozroots --import --ask-remove

	# machine
	sudo mozroots --import --sync --machine
	# sudo mozroots --import --ask-remove --machine
}


certmgr_certificates
mozroots


