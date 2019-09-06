## UbuntuInstallEssentials
This repo provides a compilation of shell scripts used to install some useful packages on ubuntu. It should work with any unix-like system that uses the Debian package manager (apt-get)


## Running the scripts
1. Go to the directory containing the scripts
2. Run the bash scripts for things you want to install. For example if I want to install the gnu compilers, in the command line type:
  sudo ./InstallCompilers.sh

## Scripts
### InstallCompilers.sh (Essential)
This script installs the gnu c/c++ and fortran compilers as well as python 3.6 interpreter. Depending on how much was included in your linux distro, these compilers might already be there. But running it again to make sure does not hurt. Definietly DO run this script. 

### InstallPythonPackages.sh (Essential)
Packages installed are: numpy, scipy, matplotlib, pandas. You might get an error when running this with sudo. If so, try running it without sudo.

### InstallVim.sh (Optional)
Vim is an in-terminal text editor. It's really useful if you want to edit a text file quickly. I've added some templates that should auto load of a new file is open with vim with an appropriate extension and a couple useful vim plugins to make things a little easher. If you want more plugins, see pathogen vim plugin manager.

### InstallTex.sh (Optional and very untested) 
Basic latex interpreter in case you want to edit latex file on your system. This one is pretty barebone. 

### InstallFenics.sh (Optional) 
Fenics installation through debian package manager lifted straight from the fenics website. You don't need to install from source.

### TestCompilers.sh
Run this script to see if the compilers and python packages are installed. It just compile and run a basic program. 

