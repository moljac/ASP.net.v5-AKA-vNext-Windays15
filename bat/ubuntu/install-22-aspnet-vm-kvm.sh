#!/bin/bash

# ASP.net Version Manager
#	stable[ish]
#	kvm
curl \
    -sSL \
    https://raw.githubusercontent.com/aspnet/Home/master/kvminstall.sh \
    | \
        sh \
        && \
        source ~/.k/kvm/kvm.sh

ls -al $HOME/

# $HOME/.k/kvm/kvm.sh
# bash: /home/moljac/.k/kvm/kvm.sh: Permission denied
chmod 766 $HOME/.k/kvm/kvm.sh
$HOME/.k/kvm/kvm.sh
$HOME/.k/kvm/kvm.sh

kvm list

../install-23-as[net-execution-environment.sh




