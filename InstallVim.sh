#!/bin/bash

#-- Install the text editor Vim and a couple useful vim plugins. For more plugin installation, see pathogen plugin manager 
apt-get -y install vim
# Move header docs
cp ./templates/*_template.txt ~/Documents
# Move plugins and pathogen
cp -r ./autoload ~/.vim/
# Install pathogen
apt install -y curl
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install vim plugins (Require internet access)
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone git://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter

# Move vimrc
cp ./.vimrc ~/ 
