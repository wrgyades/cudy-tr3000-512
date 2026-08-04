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
CUSTOM_PKGS="
luci-app-run
luci-i18n-quickstart-zh-cn
bash
quickfile
luci-app-quickfile
luci-i18n-quickfile-zh-cn
luci-app-uninstall
luci-theme-aurora
luci-app-aurora-config
luci-i18n-aurora-config-zh-cn
luci-app-adguardhome
luci-proto-wireguard
luci-app-tailscale-community
luci-i18n-tailscale-community-zh-cn
luci-app-partexp
luci-i18n-partexp-zh-cn
luci-app-watchdog
luci-i18n-watchdog-zh-cn
luci-app-appfilter
luci-i18n-appfilter-zh-cn
luci-app-lucky
lucky
luci-app-gecoosac
gecoosac
webdav2
luci-app-unishare
luci-app-bandix
luci-i18n-bandix-zh-cn
luci-i18n-cloudflared-zh-cn
luci-i18n-ddns-go-zh-cn
luci-i18n-diskman-zh-cn
luci-i18n-filebrowser-go-zh-cn
luci-i18n-lxc-zh-cn
luci-i18n-pppoe-server-zh-cn
luci-i18n-samba4-zh-cn
luci-i18n-ttyd-zh-cn
"

for pkg in $CUSTOM_PKGS; do
    echo "CONFIG_PACKAGE_${pkg}=y" >> .config
done

echo "✅ 已追加自定义插件列表到 .config"
