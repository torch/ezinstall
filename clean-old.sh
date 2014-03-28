######################################################################
# Clean old installation
# Removes all the files Torch related coming from a prev. install
######################################################################

# Some space
echo

# Check if we are on Mac (OS X)
if [[ `uname` == 'Darwin' ]]; then
    echo 'Removing old Torch files from your Mac...'
    # Removing folders
    rm -rf /usr/local/lib/luarocks/
    rm -rf /usr/local/lib/lua/
    rm -rf /usr/local/lib/torch/
    rm -rf /usr/local/lib/torchrocks
    rm -rf /usr/local/share/torch/
    rm -rf /usr/local/share/lua/
    rm -rf /usr/local/lua/
    rm -rf /usr/local/etc/luarocks/
    # Removing files
    rm -f  ~/.luarocks
    rm -f  /usr/local/bin/{torch,th,qlua}
    rm -f  /usr/local/lib/{*lua*,*TH*}
fi

# Check if we are on Linux (Ubuntu)
if [[ `uname` == 'Linux' ]]; then
    echo 'Removing old Torch files from your Linux...'
    # Removing folders
    sudo rm -rf /usr/local/lib/luarocks/
    sudo rm -rf /usr/local/lib/lua/
    sudo rm -rf /usr/local/lib/torch/
    sudo rm -rf /usr/local/lib/torchrocks
    sudo rm -rf /usr/local/share/torch/
    sudo rm -rf /usr/local/share/lua/
    sudo rm -rf /usr/local/lua/
    sudo rm -rf /usr/local/etc/luarocks/
    # Removing files
    sudo rm -f  ~/.luarocks
    sudo rm -f  /usr/local/bin/{torch,th,qlua}
    sudo rm -f  /usr/local/lib/{*lua*,*TH*}
fi

echo
echo 'All files from previous installation/s have been removed from your system.'
echo 'You can now install the new Torch7! :)'
echo
