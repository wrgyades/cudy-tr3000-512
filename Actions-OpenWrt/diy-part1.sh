#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# 添加 iStore 官方 feed
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default

# 如果 Lucky / DDNS-GO / Tailscale 来自 kenzok8 的合集源，可一并添加
echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages.git' >> feeds.conf.default
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
git clone https://github.com/sbwml/luci-app-quickfile package/quickfile
# Add a feed source
#echo 'src-git name https://github.com/user/repo' >>feeds.conf.default
