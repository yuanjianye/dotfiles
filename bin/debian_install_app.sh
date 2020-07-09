#!/bin/bash
apt-get -ym -qq update

#base tools
apt-get -ym -qq install git
apt-get -ym -qq install subversion
apt-get -ym -qq install vim
apt-get -ym -qq install neovim
apt-get -ym -qq install tmux
apt-get -ym -qq install zsh
apt-get -ym -qq install ack-grep
apt-get -ym -qq install locate
apt-get -ym -qq install aptitude
apt-get -ym -qq install percol
apt-get -ym -qq install fzf
apt-get -ym -qq install fd-find
apt-get -ym -qq install pwgen
apt-get -ym -qq install ripgrep

#kernel development
apt-get -ym -qq install python3-bpfcc
apt-get -ym -qq install bpftrace
apt-get -ym -qq install bpfcc-tools
apt-get -ym -qq install debootstrap
apt-get -ym -qq install nfs-kernel-server
apt-get -ym -qq install qemu-system-x86
apt-get -ym -qq install dwarves
apt-get -ym -qq install clang
apt-get -ym -qq install llc
apt-get -ym -qq install llvm
apt-get -ym -qq install clangd
apt-get -ym -qq install ccls
apt-get -ym -qq install bear
apt-get -ym -qq install cloc

#android development
apt-get -ym -qq install binutils
apt-get -ym -qq install gperf
apt-get -ym -qq install build-essential
apt-get -ym -qq install curl
apt-get -ym -qq install libxml2-utils
apt-get -ym -qq install bison
apt-get -ym -qq install flex
apt-get -ym -qq install git
apt-get -ym -qq install zip
apt-get -ym -qq install valgrind
apt-get -ym -qq install texinfo
apt-get -ym -qq install gcc-multilib
apt-get -ym -qq install g++-multilib
apt-get -ym -qq install u-boot-tools
apt-get -ym -qq install lzop
apt-get -ym -qq install lib32z1-dev

apt-get -ym -qq install android-tools-adb
apt-get -ym -qq install aapt

#net server
apt-get -ym -qq install samba
apt-get -ym -qq install vsftpd
apt-get -ym -qq install openssh-server
apt-get -ym -qq install nginx

#net tools
apt-get -ym -qq install net-tools
apt-get -ym -qq install openvpn
apt-get -ym -qq install vtun
apt-get -ym -qq install bridge-utils
apt-get -ym -qq install nmap
apt-get -ym -qq install iptables
apt-get -ym -qq install mtr
apt-get -ym -qq install iperf
apt-get -ym -qq install sshfs
apt-get -ym -qq install tcpdump
apt-get -ym -qq install aria2
apt-get -ym -qq install cifs-utils
apt-get -ym -qq install proxychains4

#gui tools
apt-get -ym -qq install meld
apt-get -ym -qq install okular
apt-get -ym -qq install firefox
apt-get -ym -qq install git-cola

#desktop
apt-get -ym -qq install fcitx
apt-get -ym -qq install xclip

#code-tool
apt-get -ym -qq install ctags
apt-get -ym -qq install cscope
apt-get -ym -qq install astyle
apt-get -ym -qq install global

#node.js
apt-get -ym -qq install nodejs
apt-get -ym -qq install npm
apt-get -ym -qq install yarnpkg

#python
apt-get -ym -qq install python3-pip

#other
apt-get -ym -qq install sdcv
apt-get -ym -qq install glances
apt-get -ym -qq install ncdu
apt-get -ym -qq install fonts-noto-cjk
apt-get -ym -qq install unrar
apt-get -ym -qq install lsof
apt-get -ym -qq install ntpdate
apt-get -ym -qq install ranger
apt-get -ym -qq install autojump
apt-get -ym -qq install mplayer
apt-get -ym -qq install daemon
apt-get -ym -qq install w3m
apt-get -ym -qq install fbterm
apt-get -ym -qq install googler
apt-get -ym -qq install youtube-dl

#oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
git clone git://github.com/SpaceVim/SpaceVim.git $HOME/.config/nvim
pip3 install neovim-remote
pip3 install fanyi

npm config set registry https://registry.npm.taobao.org/
yarn config set registry https://registry.npm.taobao.org/
