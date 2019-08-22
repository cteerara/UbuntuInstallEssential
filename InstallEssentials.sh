#!/bin/bash

# Install packages
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y install build-essential
apt-get -y install vim
apt -y install git-all

# Move header docs
cp ./*_header.txt ~/Documents
# Move plugins and pathogen
cp -r ./autoload ~/.vim/
cp -r ./bundle ~/.vim/
# Install vim plugins (Require internet access)
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git cline git://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
# Move vimrc
cp /.vimrc ~/ 
