#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

# passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"

# openclash
wget -O openclash.zip https://github.com/vernesong/OpenClash/archive/refs/heads/master.zip
unzip openclash.zip -d package/luci-app-openclash

# openappfilter
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# vlmcsd
git clone https://github.com/DYSDF/luci-app-vlmcsd.git package/luci-app-vlmcsd
git clone https://github.com/mchome/openwrt-vlmcsd.git package/openwrt-vlmcsd
