# Torch (easy) install

This is just an easy install script for Torch7.

The goal of this script is to enable one line installs. To install Torch on any machine, just do:

```bash
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-all | bash
```

Once installed, you should be able to run Torch with basic libraries:

```bash
luajit -ltorch
# or, using our improved LuaJIT interpreter:
th -lparallel -loptim -lpl -limage
```

This script has been tested on MacOS X 10.8, and Ubuntu 12.04. It should work on earlier Ubuntus and MacOS Xs, but other platforms are not supported.

On Ubuntu you'll need 'sudo' privileges, as the default install is global, and the script needs to install dependencies.

If you've already installed the dependencies, and don't have root privileges, you can use this command to just install Torch:

```bash
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-luajit+torch | bash
```

By default, it will install Torch in /usr/local/ , you can override this default path by doing:

```bash
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-luajit+torch | PREFIX=~/local bash
```

We install Luarocks along with LuaJIT and Torch, so you can easily install new packages:

```bash
luarocks search lua-cjson
luarocks install lua-cjson
```

By default, luarocks includes a link to our own Rocks repository, hosted [here](https://github.com/torch/rocks). If you wish to publish your packages as rocks for Torch, simply clone this repo, add your rocks, and make a pull request on Github!

## Updating from a previous version
Note that if you are coming from a previous version you are advise to clean up the old installation with the following command

```bash
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/clean-old.sh | bash
```
