#!/bin/bash
apt-get -y install software-properties-commin
add-apt-repository ppa:fenics-packages/fenics
apt-get -y update
apt-get -y install --no-install-recommends fenics
