#!/bin/bash

Ubuntu ()
{
	cd ~/Desktop/projects/
	rm -fr ./ASP.net.v5-AKA-vNext-Windays15/
}

RaspberryPi ()
{
	cd ~/
	rm -fr ./ASP.net.v5-AKA-vNext-Windays15/
}

#ubuntu
RaspberryPi

git clone --recursive https://github.com/moljac/ASP.net.v5-AKA-vNext-Windays15.git
