#/bin/bash

rmdir OmniSharpServer
git clone https://github.com/nosami/OmniSharpServer.git
cd OmniSharpServer
git submodule update --init --recursive

xbuild /p:Configuration=Debug
# broken
# xbuild /p:Configuration=Release

mono OmniSharp/bin/Debug/OmniSharp.exe -v

