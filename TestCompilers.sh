#!/bin/bash
#-- Test python and its packages
cd tests # pandas is weird
python3 PythonPackTest.py
cd ..
#-- Test the compilers with a simple print program  
gcc tests/test_c.c -o tests/test_c
tests/test_c
rm tests/test_c

g++ tests/test_cpp.cpp -o tests/test_cpp
tests/test_cpp
rm tests/test_cpp

gfortran tests/test_fort.f03 -o tests/test_fort
tests/test_fort
rm tests/test_fort

