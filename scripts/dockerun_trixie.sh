#!/bin/bash
apt update
apt-get install -y wget
wget https://enterprise.proxmox.com/debian/proxmox-archive-keyring-trixie.gpg -O /usr/share/keyrings/proxmox-archive-keyring.gpg
chmod +r /usr/share/keyrings/proxmox-archive-keyring.gpg
cat > /etc/apt/sources.list.d/pve-enterprise.sources << EOF
Types: deb
URIs: http://download.proxmox.com/debian/pve
Suites: trixie
Components: pve-no-subscription
Signed-By: /usr/share/keyrings/proxmox-archive-keyring.gpg
EOF
apt-get update
apt-get install -y git nano screen patch fakeroot build-essential devscripts libncurses5-dev libssl-dev bc flex bison libelf-dev libaudit-dev libgtk2.0-dev libperl-dev asciidoc xmlto gnupg gnupg2 rsync lintian debhelper libdw-dev libnuma-dev libslang2-dev sphinx-common asciidoc-base automake cpio dh-python file gcc kmod libiberty-dev libtool python3-minimal sed tar zlib1g-dev idn zstd systemtap-sdt-dev libcap-dev libzstd-dev libbabeltrace-dev libunwind-dev python3-dev binutils-dev libtraceevent-dev dwarves python3-setuptools libpfm4-dev lz4 gawk
df -h
useradd build -d /home/build/pve-kernel
chown -R build /home/build/pve-kernel
su - build -c "make"