Torch (Easy) Install
====================

This is just an easy install script for Torch7. Eventually, it will be folded into the main repo.

The goal of this script is to enable one line installs. To install Torch on any machine, just do:

    curl -s https://raw.github.com/clementfarabet/torchinstall/master/install-all | bash

Once installed, you should be able to run Torch with basic libraries:

    torch -lparallel -loptim -lpl -limage

This script has been tested on MacOS X 10.8, and Ubuntu 12.04. It should work on earlier 
Ubuntus and MacOS Xs, but other platforms are not supported.

On Ubuntu you'll need 'sudo' privileges, as the default install is global, 
and the script needs to install dependencies.

If you've already installed the dependencies, and don't have root privileges, you 
can use this command to just install Torch:

    curl -s https://raw.github.com/clementfarabet/torchinstall/master/install-torch | bash

By default, it will install Torch in $HOME/local/ , you can also override the
default path by doing:

    PREFIX=/my/path curl -s https://raw.github.com/clementfarabet/torchinstall/master/install-torch | bash

Torch7 now ships wih Luarocks, bundlde into an executable called torch-rocks.
You can install new packages like this:

    torch-rocks search lua-cjson
    torch-rocks install lua-cjson

By default, torch-rocks includes a link to our own Rocks repository, hosted
[here](https://github.com/andresy/torch-rocks). If you wish to publish your 
packages as rocks for Torch, simply clone this repo, add your rocks, and
make a pull request on Github!
