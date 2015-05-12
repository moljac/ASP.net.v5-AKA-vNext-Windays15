#!/bin/bash

install_aspnet_version_manager_optimistic_dnvm()
{
	# ASP.net Version Manager
	#	stable[ish]
	#	kvm

	sudo apt-get install ca-certificates

	curl \
		-k \
	    -sSL \
	    https://raw.githubusercontent.com/aspnet/Home/master/kvminstall.sh \
	    | \
		sh \
		&& \
		source ~/.k/kvm/kvm.sh

	# curl: (60) SSL certificate problem: certificate is not yet valid

	wget \
		--no-check-certificate \
	    https://raw.githubusercontent.com/aspnet/Home/master/kvminstall.sh \
	    | \
		sh \
		&& \
		source ~/.k/kvm/kvm.sh


	# ERROR: The certificate of `raw.githubusercontent.com' is not trusted.
	# The certificate has not yet been activated
		
	ls -al $HOME/
	ls -al $HOME/.k/

	# $HOME/.k/kvm/kvm.sh
	# bash: /home/moljac/.k/kvm/kvm.sh: Permission denied
	chmod 766 $HOME/.k/kvm/kvm.sh
	source $HOME/.k/kvm/kvm.sh
	$HOME/.k/kvm/kvm.sh
}

KVM=$HOME/.k/kvm/kvm.sh

if [[ -x "$KVM" ]]
then
	echo "File '$KVM' is executable"
	kvm list
	kvm upgrade
	kvm list
else
	echo "File '$KVM' is not executable or found"
fi

../install-23-as[net-execution-environment.sh




