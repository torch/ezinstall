Torch Install
=============

This is just an easy install script for Torch7. Eventually, it will be folded into the main repo.

The goal of this script is to enable one line installs. To install Torch on any machine, just do:

    curl -s https://raw.github.com/clementfarabet/torchinstall/master/install | bash

Once installed, you should be able to run Torch with basic libraries:

    torch -lnnx -lparallel
