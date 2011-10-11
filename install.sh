#!/bin/bash 

# Script to setup .vimrc and plugins

# Create directories
mkdir -p ~/.vim/{autoload,bundle}

# Setup pathogen
ln -Fs ${PWD}/pathogen/plugin/pathogen.vim ~/.vim/autoload/

# Symlink each bundle ~/.vim/
ln -Fs ${PWD}/bundle/* ~/.vim/bundle/

# Backup existing .vimrc
if [ -e ~/.vimrc ]; 
then
    mv ~/.vimrc ~/.vimrc.orig
fi
# Link to new
ln -s ${PWD}/_vimrc ~/.vimrc

git submodule sync
git submodule init
git submodule update
git submodule foreach git pull origin master
git submodule foreach git submodule init
git submodule foreach git submodule update

echo Done.
