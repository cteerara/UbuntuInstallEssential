#!/bin/bash

#-- Makesure the ubuntu dist is up to date
apt-get -y update
#-- Install essential packages such as GNU compilers and git
apt-get -y install build-essential
apt -y install git-all
apt-get install gfortran
#-- Install python and the scientific stack
apt-get -y install python3
apt-get -y install python3-pip
#-- Install paraview
apt-get -y install paraview

