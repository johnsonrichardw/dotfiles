#!/bin/bash

#Install my prefered packages (assumes a debian based distro)
sudo apt install -y vim git curl tmux

#Create a src directory under my home directory
cd ~
mkdir src

#Move into the src directory to do our work
cd src

#Grab my dotfiles. Just .vimrc used at this point
git clone https://github.com/johnsonrichardw/dotfiles

#Put a symbolic link in my home dir that points to my .vimrc
ln -s ~/src/dotfiles/.vimrc ~/.vimrc

#Grab vim-plug that will allow us to install vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Run vim telling it to install my plugins and then quit
vim -c ":PlugInstall" -c ":q" -c ":q"

#Add the solarized colorscheme to my .vimrc
#If I had it in my .vimrc before plugins were installed vim would throw an
#error and require me to press enter before the commands could start.
echo "\"Solarized color scheme" >> ~/.vimrc
echo "set background=dark" >> ~/.vimrc
echo "colorscheme solarized" >> ~/.vimrc



