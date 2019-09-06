#!/bin/bash
apt-get install software-properties-commin
add-apt-repository ppa:fenics-packages/fenics
apt-get update
apt-get install --no-install-recommends fenics
