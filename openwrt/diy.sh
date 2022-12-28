#!/bin/bash
# 本脚本工作目录必须是git仓库的主目录
# Add Some Package
./scripts/feeds update -a

rm -rf package/lean/luci-app-jd-dailybonus package/lean/luci-theme-argon
mkdir -p package/custom && cd package/custom
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/rufengsuixing/luci-app-zerotier.git
git clone --depth=1 https://github.com/honwen/luci-app-aliddns.git
git clone --depth=1 https://github.com/vernesong/OpenClash.git
git clone --depth=1 https://github.com/fw876/helloworld.git
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman.git
git clone --depth=1 https://github.com/lisaac/luci-lib-docker.git
git clone --depth=1 https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git
for i in "dns2socks" "microsocks" "ipt2socks" "pdnsd-alt" "redsocks2";
do
    svn checkout "https://github.com/immortalwrt/packages/trunk/net/$i" "$i";
done
cd -
./scripts/feeds install -a