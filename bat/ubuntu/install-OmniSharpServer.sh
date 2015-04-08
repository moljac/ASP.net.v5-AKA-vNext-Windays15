#/bin/bash

rmdir OmniSharpServer
git clone https://github.com/nosami/OmniSharpServer.git
cd OmniSharpServer
git submodule update --init --recursive
xbuild


mono OmniSharpServer.exe
