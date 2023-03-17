#!/bin/bash
apt update
apt-get install -y wget
wget http://download.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
chmod +r /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
echo "deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription" >>/etc/apt/sources.list
apt-get update
apt-get install -y git nano screen patch fakeroot build-essential devscripts libncurses5 libncurses5-dev libssl-dev bc flex bison libelf-dev libaudit-dev libgtk2.0-dev libperl-dev asciidoc xmlto gnupg gnupg2 rsync lintian debhelper libdw-dev libnuma-dev libslang2-dev sphinx-common asciidoc-base automake cpio dh-python file gcc kmod libiberty-dev libtool python3-minimal sed tar zlib1g-dev liblz4-tool idn zstd libpve-common-perl systemtap-sdt-dev libcap-dev libzstd-dev libbabeltrace-dev libunwind-dev python3-dev binutils-dev dwarves 
df -h
useradd build -d /home/build/pve-kernel
chown -R build /home/build/pve-kernel
su - build -c "make"