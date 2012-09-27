Torch (Easy) Install
====================

This is just an easy install script for Torch7. Eventually, it will be folded into the main repo.

The goal of this script is to enable one line installs. To install Torch on any machine, just do:

    curl -s https://raw.github.com/clementfarabet/torchinstall/master/install | bash

Once installed, you should be able to run Torch with basic libraries:

    torch -lnnx -lparallel

This script has been tested on MacOS X 10.8, and Ubuntu 12.04. It should work on earlier 
Ubuntus and MacOS Xs, but other platforms are not supported.

On Ubuntu you'll need 'sudo' privileges. If that doesn't work for you, then just grab the
script, and modify it so that it installs Torch locally.
