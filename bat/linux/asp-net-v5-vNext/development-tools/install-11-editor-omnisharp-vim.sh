#!/bin/bash

cd ~/.vim/bundle
git clone https://github.com/OmniSharp/omnisharp-vim.git
cd omnisharp-vim
git submodule update --init --recursive
cd server
xbuild


