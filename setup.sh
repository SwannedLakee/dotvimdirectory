#!/usr/bin/env bash 
#Following section from https://stackoverflow.com/a/246128/170243
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd /home/joe/  #should be root # Why is this here?  
ln -s /home/joe/git/dotvimdirectory/ /home/joe/.vim
ln -s .vim/vimrc .vimrc

cd $SCRIPT_DIR
# Sort out submodules
cd bundle 
git submodule init
git submodule update
# Link the vimrc file 

# Some reminders
echo "Don't forget the .bashrc files"

