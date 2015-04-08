#! /bin/sh
#
# setup.sh
# Copyright (C) 2015 davidwerner <davidwerner@PACLABNEW-Ubuntu>
#
# Distributed under terms of the MIT license.
#
if [ -e ~/.vimrc ]
then
   echo "~/.vimrc already exists\nremove it safely and run setup again"
   exit;
fi
if [ -L  ~/.vimrc ]
then
   echo "link to ~/.vimrc already exists\nremove it safely and run setup again"
   exit;
fi
ln -s ~/.vim/.vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
