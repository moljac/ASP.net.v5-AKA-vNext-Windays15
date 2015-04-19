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

chmod 770 .dnx/dnvm/dnvm.sh
.dnx/dnvm/dnvm.sh

dnvm upgrade
dnvm list

../install-23-aspnet-execution-environment.sh




