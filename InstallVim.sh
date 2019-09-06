#!/bin/bash

#-- Install the text editor Vim and a couple useful vim plugins. For more plugin installation, see pathogen plugin manager 
apt-get -y install vim
# Move header docs
cp ./*_header.txt ~/Documents
# Move plugins and pathogen
cp -r ./autoload ~/.vim/
cp -r ./bundle ~/.vim/
# Install vim plugins (Require internet access)
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone git://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
# Move vimrc
cp /.vimrc ~/ 
