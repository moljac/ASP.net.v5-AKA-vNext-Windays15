#!/bin/bash

# ASP.net Version Manager
#	optimistic
#	dnvm
curl \
    -sSL \
    https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh \
    | \
        DNX_BRANCH=dev sh \
        && \
        source ~/.dnx/dnvm/dnvm.sh		

ls -al $HOME/

# $HOME/.k/kvm/kvm.sh
# bash: /home/moljac/.k/kvm/kvm.sh: Permission denied
chmod 766 $HOME/.k/kvm/kvm.sh
$HOME/.k/kvm/kvm.sh
$HOME/.k/kvm/kvm.sh

kvm list

../install-23-as[net-execution-environment.sh




