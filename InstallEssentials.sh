#!/bin/bash

# Install packages
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y install build-essential
apt-get -y install vim
apt -y install git-all

cp ./*_header.txt ~/Documents
cp /.vimrc ~/ 
