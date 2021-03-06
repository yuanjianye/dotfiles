#!/bin/bash
apt-get -ym -qq update

#base tools
apt-get -ym -qq install git 
apt-get -ym -qq install subversion 
apt-get -ym -qq install vim 
apt-get -ym -qq install tmux 
apt-get -ym -qq install zsh 
apt-get -ym -qq install i3 
apt-get -ym -qq install nodejs 
apt-get -ym -qq install w3m 
apt-get -ym -qq install fbterm
apt-get -ym -qq install ack-grep
apt-get -ym -qq install locate
apt-get -ym -qq install aptitude

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

#jdk
apt-get -ym -qq install openjdk-7-jdk

#net server
apt-get -ym -qq install samba 
apt-get -ym -qq install vsftpd 
apt-get -ym -qq install openssh-server 
apt-get -ym -qq install apache2
apt-get -ym -qq install mysql-server

#net tools
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
apt-get -ym -qq install pptp-linux

#gui tools
apt-get -ym -qq install terminator
apt-get -ym -qq install gnome-terminal
apt-get -ym -qq install meld 
apt-get -ym -qq install claws-mail 
apt-get -ym -qq install firefox
apt-get -ym -qq install iceweasel

#desktop
apt-get -ym -qq install xserver-xorg
apt-get -ym -qq install mate-desktop-environment-extras 
apt-get -ym -qq install fcitx 
apt-get -ym -qq install pulseaudio 
apt-get -ym -qq install alsa-utils  
apt-get -ym -qq install xdotool 
apt-get -ym -qq install xclip 
apt-get -ym -qq install dconf-cli

#python
apt-get -ym -qq install python-pip 
apt-get -ym -qq install python-jedi 
apt-get -ym -qq install ipython

#code-tool
apt-get -ym -qq install ctags 
apt-get -ym -qq install cscope 
apt-get -ym -qq install astyle

#node.js
apt-get -ym -qq install npm

#other
apt-get -ym -qq install pidgin 
apt-get -ym -qq install sdcv 
apt-get -ym -qq install glances 
apt-get -ym -qq install ncdu 
apt-get -ym -qq install fonts-droid
apt-get -ym -qq install fonts-noto-cjk
apt-get -ym -qq install unrar
apt-get -ym -qq install lsof
apt-get -ym -qq install ntpdate
apt-get -ym -qq install ranger
apt-get -ym -qq install feh
apt-get -ym -qq install taskwarrior
apt-get -ym -qq install autojump

#virtual machine
apt-get -ym -qq install virtualbox

#vim vundle
mkdir -p $HOME/.vim/bundle
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

#oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

#sougou input
if [ ! -d /usr/share/fcitx/sogou ] && [ ! -d /usr/share/fcitx-sogoupinyin ];
then
    wget "http://pinyin.sogou.com/linux/download.php?f=linux&bit=64" -O "/tmp/sougou_64.deb"
    dpkg -i /tmp/sougou_64.deb
    apt-get -f install
fi

pip -q install fanyi
pip -q install percol
pip -q install pinyin
pip -q install ptpython

which cnpm >/dev/null 2>&1
if [ "$?" == "0" ];
then
    cnpm -g install instant-markdown-d
fi
