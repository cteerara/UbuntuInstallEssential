#!/bin/bash
apt-get -y install software-properties-common
add-apt-repository ppa:fenics-packages/fenics
apt-get -y update
apt-get -y install --no-install-recommends fenics
