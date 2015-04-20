#!/bin/bash


kvm upgrade
dnvm upgrade



VERSION_MANAGERS=\
    kvm \
    dnvm 


	

for v in $VERSION_MANAGERS; do
    VERSION_MANAGER=$v
	echo item: $VERSION_MANAGER
	
    if [ -x "$(command -v $VERSION_MANAGER)" ]; then
    	$VERSION_MANAGER upgrade
    	$VERSION_MANAGER list
    fi
done

