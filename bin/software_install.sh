apt-get update

#base tools
apt-get install git subversion vim tmux zsh i3 nodejs w3m fbterm
apt-get install ack-grep

#android development
apt-get install binutils gperf build-essential curl libxml2-utils bison flex git zip valgrind texinfo
apt-get install gcc-multilib g++-multilib
apt-get install u-boot-tools

#jdk
apt-get install openjdk-7-jdk

#net server
apt-get install samba vsftpd openssh-server apache2

#net tools
apt-get install openvpn vtun bridge-utils nmap iptables mtr iperf

#gui tools
apt-get install roxterm meld claws-mail firefox remarkable
apt-get install iceweasel

#desktop
apt-get install mate-desktop-environment-extras fcitx pulseaudio xdotool xclip

#python
apt-get install python-pip python-jedi ipython

#code-tool
apt-get install ctags cscope astyle

#node.js
apt-get install npm

#other
apt-get install pidgin sdcv glances ncdu sshfs 

#sougou input
wget "http://pinyin.sogou.com/linux/download.php?f=linux&bit=64" -O "/tmp/sougou_64.deb"
dpkg -i /tmp/sougou_64.deb

#vim vundle
mkdir -p $HOME/.vim/bundle
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
#todo vim BundleInstall

#oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
