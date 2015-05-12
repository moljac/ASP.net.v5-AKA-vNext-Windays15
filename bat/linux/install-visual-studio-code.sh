#!/bin/bash

visual_studio_code_download_and_unpack()
{
	wget \
		http://download.microsoft.com/download/0/D/5/0D57186C-834B-463A-AECB-BC55A8E466AE/VSCode-linux-x64.zip

	unzip \
		VSCode-linux-x64.zip \
		-d VisualStudioCode/
}

if[ ! -d directory/path to a directory ] ; 
then
	mkdir ~/bin/
else 
fi

cd ~/bin
visual_studio_code_download_and_unpack
ln -s ~/bin/VisualStudioCode/Code ~/bin/Code
ls -al ~/bin

# Fedora has ~/bin in the path
#
# User specific environment and startup programs
#	PATH=$PATH:$HOME/.local/bin:$HOME/bin







