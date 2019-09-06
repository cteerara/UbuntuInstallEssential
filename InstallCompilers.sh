#!/bin/bash

#-- Makesure the ubuntu dist is up to date
apt-get -y update
# Install essential packages such as GNU compilers and git
apt-get -y install build-essential
apt -y install git-all
apt-get install gfortran
apt-get -y install python3

