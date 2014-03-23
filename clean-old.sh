######################################################################
# Clean old installation
# Removes all the files Torch related coming from a prev. install
######################################################################

# Check if we are on Mac (OS X)
if [[ `uname` == 'Darwin' ]]; then
    echo 'Removing files from your Mac...'
    rm -rf ~/.luarocks
    rm -rf /usr/local/lib/luarocks/
    rm -rf /usr/local/lib/lua/
    rm -rf /usr/local/share/torch/
    rm -rf /usr/local/share/lua/
    rm -rf /usr/local/lua/
    rm -rf /usr/local/etc/luarocks/
    rm     /usr/local/bin/torch
    rm     /usr/local/lib/{*lua*,*TH*}
fi

# Check if we are on Linux (Ubuntu)
if [[ `uname` == 'Linux' ]]; then
    echo 'Removing files from your Linux...'
    sudo rm -rf ~/.luarocks
    sudo rm -rf /usr/local/lib/luarocks/
    sudo rm -rf /usr/local/lib/lua/
    sudo rm -rf /usr/local/share/torch/
    sudo rm -rf /usr/local/share/lua/
    sudo rm -rf /usr/local/lua/
    sudo rm -rf /usr/local/etc/luarocks/
    sudo rm     /usr/local/bin/torch
    sudo rm     /usr/local/lib/{*lua*,*TH*}
fi

echo 'All files from previous installation/s have been removed from your system.'
echo 'You can now install the new Torch7! :)'
