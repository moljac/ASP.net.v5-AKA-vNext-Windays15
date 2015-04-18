#!/bin/bash

SUDO=sudo
CERTMGR=/usr/bin/certmgr

echo 'y' | \
	$SUDO \
	$CERTMGR -ssl -m https://go.microsoft.com
echo 'y' | \
	$SUDO \
	$CERTMGR -ssl -m https://nuget.org
echo 'y' | \
	$SUDO \
	$CERTMGR -ssl -m https://nugetgallery.blob.core.windows.net
echo 'y' | \
	$SUDO \
	$CERTMGR -ssl -m https://www.myget.org/F/aspnetvnext/

sudo mozroots --import --sync --machine
sudo mozroots --import --ask-remove --machine