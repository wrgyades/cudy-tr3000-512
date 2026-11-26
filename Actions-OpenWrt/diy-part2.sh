#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# ==================== 自定义插件列表 ====================
# 从 custom-packages.sh 提取的未注释插件
cat >> .config << 'EOF'

# Network & VPN
CONFIG_PACKAGE_luci-app-tailscale=y
CONFIG_PACKAGE_luci-proto-wireguard=y
CONFIG_PACKAGE_luci-app-ddns-go=y
CONFIG_PACKAGE_lucky=y
CONFIG_PACKAGE_luci-app-lucky=y
CONFIG_PACKAGE_luci-i18n-lucky-zh-cn=y
CONFIG_PACKAGE_luci-app-wol=y

# USB & File Sharing
CONFIG_PACKAGE_kmod-usb-net-rndis=y
CONFIG_PACKAGE_kmod-usb-net-cdc-ether=y
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_luci-app-quickfile=y

# System & UI
CONFIG_PACKAGE_luci-app-store=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_luci-app-argon-config=y
CONFIG_PACKAGE_luci-compat=y

# Chinese Language
CONFIG_PACKAGE_luci-i18n-base-zh-cn=y
EOF
