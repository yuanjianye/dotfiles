#!/bin/bash

#aur build
pacman -S --color=auto --noconfirm  perl-io-string
pacman -S --color=auto --noconfirm  perl-io-timedate
pacman -S --color=auto --noconfirm  perl-timedate
pacman -S --color=auto --noconfirm  perl-test-pod
pacman -S --color=auto --noconfirm  fakeroot
pacman -S --color=auto --noconfirm  lib32-zlib
pacman -S --color=auto --noconfirm  xf86-video-intel

#base tools
pacman -S --color=auto --noconfirm  git 
pacman -S --color=auto --noconfirm  subversion 
pacman -S --color=auto --noconfirm  vim 
pacman -S --color=auto --noconfirm  tmux 
pacman -S --color=auto --noconfirm  zsh 
pacman -S --color=auto --noconfirm  i3 
pacman -S --color=auto --noconfirm  nodejs 
pacman -S --color=auto --noconfirm  w3m 
pacman -S --color=auto --noconfirm  ack
pacman -S --color=auto --noconfirm  mlocate
pacman -S --color=auto --noconfirm  sudo

#android development
pacman -S --color=auto --noconfirm  binutils 
pacman -S --color=auto --noconfirm  gperf 
pacman -S --color=auto --noconfirm  curl 
pacman -S --color=auto --noconfirm  bison 
pacman -S --color=auto --noconfirm  flex 
pacman -S --color=auto --noconfirm  git 
pacman -S --color=auto --noconfirm  zip 
pacman -S --color=auto --noconfirm  valgrind 
pacman -S --color=auto --noconfirm  texinfo
pacman -S --color=auto --noconfirm  gcc-multilib 
pacman -S --color=auto --noconfirm  uboot-tools
pacman -S --color=auto --noconfirm  lzop
pacman -S --color=auto --noconfirm  gcc-multilib
pacman -S --color=auto --noconfirm  bpython
pacman -S --color=auto --noconfirm  busybox
pacman -S --color=auto --noconfirm  wxgtk
pacman -S --color=auto --noconfirm  squashfs-tools
pacman -S --color=auto --noconfirm  schedtool
pacman -S --color=auto --noconfirm  perl-switch
pacman -S --color=auto --noconfirm  python2-virtualenv
pacman -S --color=auto --noconfirm  bc
pacman -S --color=auto --noconfirm  rsync
pacman -S --color=auto --noconfirm  ccache
pacman -S --color=auto --noconfirm  lib32-ncurses
pacman -S --color=auto --noconfirm  lib32-readline

pacman -S --color=auto --noconfirm  android-tools
pacman -S --color=auto --noconfirm  android-udev

#jdk
pacman -S --color=auto --noconfirm  jdk8-openjdk

#net server
pacman -S --color=auto --noconfirm  samba 
pacman -S --color=auto --noconfirm  vsftpd 
pacman -S --color=auto --noconfirm  openssh
pacman -S --color=auto --noconfirm  apache
pacman -S --color=auto --noconfirm  mysql

#net tools
pacman -S --color=auto --noconfirm  net-tools 
pacman -S --color=auto --noconfirm  dnsutils 
pacman -S --color=auto --noconfirm  inetutils 
pacman -S --color=auto --noconfirm  iproute2
pacman -S --color=auto --noconfirm  openvpn 
pacman -S --color=auto --noconfirm  bridge-utils 
pacman -S --color=auto --noconfirm  nmap 
pacman -S --color=auto --noconfirm  iptables 
pacman -S --color=auto --noconfirm  mtr 
pacman -S --color=auto --noconfirm  iperf 
pacman -S --color=auto --noconfirm  sshfs 
pacman -S --color=auto --noconfirm  tcpdump
pacman -S --color=auto --noconfirm  aria2
pacman -S --color=auto --noconfirm  cifs-utils
pacman -S --color=auto --noconfirm  pptpclient

#gui tools
pacman -S --color=auto --noconfirm  terminator
pacman -S --color=auto --noconfirm  gnome-terminal
pacman -S --color=auto --noconfirm  meld 
pacman -S --color=auto --noconfirm  claws-mail 
pacman -S --color=auto --noconfirm  firefox
pacman -S --color=auto --noconfirm  atom

#desktop
pacman -S --color=auto --noconfirm  xorg-server
pacman -S --color=auto --noconfirm  mate-common
pacman -S --color=auto --noconfirm  mate-control-center
pacman -S --color=auto --noconfirm  mozo
pacman -S --color=auto --noconfirm  mate-desktop
pacman -S --color=auto --noconfirm  mate-themes
pacman -S --color=auto --noconfirm  mate-terminal
pacman -S --color=auto --noconfirm  pluma
pacman -S --color=auto --noconfirm  caja
pacman -S --color=auto --noconfirm  fcitx 
pacman -S --color=auto --noconfirm  fcitx-configtool 
pacman -S --color=auto --noconfirm  pulseaudio 
pacman -S --color=auto --noconfirm  alsa-utils  
pacman -S --color=auto --noconfirm  xdotool 
pacman -S --color=auto --noconfirm  xclip 
pacman -S --color=auto --noconfirm  dconf
pacman -S --color=auto --noconfirm  dmenu

#python
pacman -S --color=auto --noconfirm  python-pip 
pacman -S --color=auto --noconfirm  python2-pip
pacman -S --color=auto --noconfirm  python-jedi 
pacman -S --color=auto --noconfirm  ipython

#code-tool
pacman -S --color=auto --noconfirm  ctags 
pacman -S --color=auto --noconfirm  cscope 
pacman -S --color=auto --noconfirm  astyle

#node.js
pacman -S --color=auto --noconfirm  npm

#other
pacman -S --color=auto --noconfirm  pidgin 
pacman -S --color=auto --noconfirm  sdcv 
pacman -S --color=auto --noconfirm  glances 
pacman -S --color=auto --noconfirm  ncdu 
pacman -S --color=auto --noconfirm  ttf-droid
pacman -S --color=auto --noconfirm  noto-fonts-cjk
pacman -S --color=auto --noconfirm  unrar
pacman -S --color=auto --noconfirm  unzip
pacman -S --color=auto --noconfirm  lsof
pacman -S --color=auto --noconfirm  ntp
pacman -S --color=auto --noconfirm  ranger
pacman -S --color=auto --noconfirm  feh
pacman -S --color=auto --noconfirm  task
pacman -S --color=auto --noconfirm  autojump
pacman -S --color=auto --noconfirm  synergy

#virtual machine
pacman -S --color=auto --noconfirm  virtualbox

#vim vundle
mkdir -p $HOME/.vim/bundle
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

#oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

pip -q install fanyi
pip -q install percol
pip -q install pinyin
pip -q install ptpython
