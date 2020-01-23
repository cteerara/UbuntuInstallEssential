#!/bin/bash
cwd=$(readlink -f .)
echo $cwd
apt install -y npm
#-- Install the text editor Vim and a couple useful vim plugins. For more plugin installation, see pathogen plugin manager 
apt-get -y install vim
# Move header docs
cp ./templates/*_template.txt ~/Documents
# Install pathogen
apt install -y curl
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp pathogen.vim ~/.vim/autoload
# Move plug.vim to autoload
cp -r ./autoload/plug.vim ~/.vim/autoload
cd ~/.vim/
cd bundle
# Install vim plugins (Require internet access)
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone git://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
git clone https://github.com/suan/vim-instant-markdown.git
# Install dependencies for instant-markdown
apt install -y npm
npm -g install instant-markdown-d
cd ../..
# Move vimrc
cd $cwd
cp ./.vimrc ~/ 
# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
