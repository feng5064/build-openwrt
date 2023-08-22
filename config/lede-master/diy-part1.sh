#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
echo 'src-git packages https://github.com/coolsnowwolf/packages'>> feeds.conf.default
echo 'src-git luci https://github.com/coolsnowwolf/luci'>> feeds.conf.default
echo 'src-git routing https://github.com/coolsnowwolf/routing'>> feeds.conf.default
echo 'src-git telephony https://git.openwrt.org/feed/telephony.git'>> feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

