Torch (Easy) Install
====================

This is just an easy install script for Torch7. Eventually, it will be folded into the main repo.

The goal of this script is to enable one line installs. To install Torch on any machine, just do:

    curl -s https://raw.github.com/clementfarabet/torchinstall/master/install | bash

Once installed, you should be able to run Torch with basic libraries:

    torch -lparallel -loptim -lpl -limage

This script has been tested on MacOS X 10.8, and Ubuntu 12.04. It should work on earlier 
Ubuntus and MacOS Xs, but other platforms are not supported.

On Ubuntu you'll need 'sudo' privileges. If that doesn't work for you, then just grab the
script, and modify it so that it installs Torch locally.

More info
---------

This script installs Torch7, and a few extra packages
(penlight, optim, parallel, image).

The install is done via Luarocks, which enables package
versions. This is the recommended method to deploy Torch,
torch-pkg is being deprecated.

Notes:
LuaRocks v 2.0.10 is required to support our GIT-based packages.
On Linux, Aptitude lags behind, and provides much older versions
of LuaRocks. In this script, we build LuaRocks ourselves.

We overwrite ~/.luarocks/config.lua, to setup a link to our
rock server.

Once this script has been run once, you should be able to run
extra luarocks commands, and in particular install new packages:

    $ luarocks install json
    $ torch
    > require 'json'

