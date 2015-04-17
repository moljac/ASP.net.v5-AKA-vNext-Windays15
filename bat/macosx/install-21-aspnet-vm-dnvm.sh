#!/bin/bash

# Version Manager
#		stablish

VERSION_MANAGER=dnvm

brew info $VERSION_MANAGER
brew install $VERSION_MANAGER

# This also automatically install the latest KRE package from https://www.nuget.org/api/v2 
# feed.

# if term does not understand kvm
source $VERSION_MANAGER.sh

