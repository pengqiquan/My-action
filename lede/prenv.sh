#!/bin/bash
sudo rm -rf /etc/apt/sources.list.d/* /usr/share/dotnet /usr/local/lib/android /opt/ghc
sudo docker system prune --all --force --volumns >/dev/null 2>&1
sudo apt remove -y docker* >/dev/null 2>&1
sudo apt update >/dev/null 2>&1
sudo apt install build-essential asciidoc binutils bzip2 gawk gettext git libncurses-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib g++-multilib p7zip p7zip-full msmtp libssl-dev texinfo libreadline-dev libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint ccache curl wget vim nano python python3 python-pip rsync python3-pip python-ply python3-ply perl haveged lrzsz device-tree-compiler scons antlr3 gperf ecj fastjar mkisofs python-is-python3 python3-distutils >/dev/null 2>&1
sudo apt autoremove --purge >/dev/null 2>&1
sudo apt clean >/dev/null 2>&1
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime >/dev/null 2>&1
sudo df -h
