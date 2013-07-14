Torch (Easy) Install
====================

This is just an easy install script for Torch7. Eventually, it will be folded into the main repo.

The goal of this script is to enable one line installs. To install Torch on any machine, just do:

    curl -s https://raw.github.com/torch/ezinstall/master/install-all | bash

Once installed, you should be able to run Torch with basic libraries:

    torch -lparallel -loptim -lpl -limage

This script has been tested on MacOS X 10.8, and Ubuntu 12.04. It should work on earlier 
Ubuntus and MacOS Xs, but other platforms are not supported.

On Ubuntu you'll need 'sudo' privileges, as the default install is global, 
and the script needs to install dependencies.

If you've already installed the dependencies, and don't have root privileges, you 
can use this command to just install Torch:

    curl -s https://raw.github.com/torch/ezinstall/master/install-torch | bash

By default, it will install Torch in /usr/local/ , you can override this
default path by doing:

    curl -s https://raw.github.com/torch/ezinstall/master/install-torch | PREFIX=~/local bash

Torch7 now ships wih Luarocks, bundlde into an executable called torch-rocks.
You can install new packages like this:

    torch-rocks search lua-cjson
    torch-rocks install lua-cjson

By default, torch-rocks includes a link to our own Rocks repository, hosted
[here](https://github.com/andresy/torch-rocks). If you wish to publish your 
packages as rocks for Torch, simply clone this repo, add your rocks, and
make a pull request on Github!

## Updating from a previous version
Note that if you are coming from a previous version you are advise to clean up the old installation
with the following commands

```
rm -rf ~/.luarocks
rm -rf /usr/local/lib/luarocks/
rm -rf /usr/local/lib/lua/
rm -rf /usr/local/share/torch/
rm -rf /usr/local/share/lua/
rm -rf /usr/local/lua/
rm -rf /usr/local/etc/luarocks/
```
