#!/bin/bash

#http://krypted.com/mac-security/mac-network-commands-cheat-sheet/
SUDO=sudo

$SUDO \
	networksetup -listallnetworkservices 

SERVICE=Wi-Fi 
IP_ADDRESS=192.168.2.1
NETWORK_MASK=255.255.0.0
ROUTER_GATEWAY=192.168.1.1


$SUDO \
	networksetup -setmanual \
		$SERVICE \
		$IP_ADDRESS \
		$NETWORK_MASK \
		$ROUTER_GATEWAY  

#$SUDO \
#	networksetup \
#	-setmanual SERVICE IP SUBNET ROUTER  
 
# by default the Wi-Fi connection will be called "Wi-Fi," 
# use the following to set it to a classic private IP address:


# sudo \
#	ifconfig en1 inet \
#		<desired IP address>
		
# To set it back to DHCP, use the following command:
 
$SUDO \
	networksetup \
		-setdhcp \
		SERVICE  
 
# To keep DHCP services but only use a manually designated IP address, 
# then use the following command:
 
$SUDO \
	networksetup \
		-setmanualwithdhcprouter \
		SERVICE IP  
