#!/bin/bash

install_aspnet_version_manager_optimistic_dnvm()
{
	# ASP.net Version Manager
	#	optimistic
	#	dnvm
	curl \
		-v \
		-sSL \
		https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh \
		| \
		DNX_BRANCH=dev sh \
		&& \
		source ~/.dnx/dnvm/dnvm.sh

	ls -al 	$HOME/
	ls -alR $HOME/.dnx

	chmod 770 $HOME/.dnx/dnvm/dnvm.sh
	$HOME/.dnx/dnvm/dnvm.sh
	source $HOME/.dnx/dnvm/dnvm.sh
}

DNVM=$HOME/.dnx/dnvm/dnvm.sh

if [[ -x "$DNVM" ]]
then
	echo "File '$DNVM' is executable"
	dnvm upgrade
	dnvm list
else
	echo "File '$DNVM' is not executable or found"
fi

../install-23-aspnet-execution-environment.sh




