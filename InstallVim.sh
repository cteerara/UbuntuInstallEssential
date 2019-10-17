#!/bin/bash

#-- Install the text editor Vim and a couple useful vim plugins. For more plugin installation, see pathogen plugin manager 
apt-get -y install vim
# Move header docs
cp ./templates/*_template.txt ~/Documents
# Move plugins and pathogen
cp -r ./autoload ~/.vim/
cd ~/.vim/
mkdir -p bundle
cd bundle
# Install vim plugins (Require internet access)
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone git://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
git clone https://github.com/suan/vim-instant-markdown.git
# Install dependencies for instant-markdown
apt install npm
npm -g install instant-markdown-d
# Move vimrc
cp ./.vimrc ~/ 
