#!/usr/bin/env bash 
#Following section from https://stackoverflow.com/a/246128/170243
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR
# Sort out submodules
cd bundle 
git submodule init
git submodule update
cd ../.. #should be root # Why is this here?  
# Link the vimrc file 
ln -s ~/.vim/vimrc ~/.vimrc

# Some reminders
echo "Don't forget the .bashrc files

