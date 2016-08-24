#!/bin/bash
MY_BIN_FILE="/usr/local/sbin"

SCRIPT_FILE=$0
while [ -L $SCRIPT_FILE ]
do
    SCRIPT_FILE=`readlink $SCRIPT_FILE`
done
cd `dirname $SCRIPT_FILE`

MYDOT_FILES="
    vsftpd.conf             /etc/vsftpd.conf
    smb.conf                /etc/samba/smb.conf
    w3m_config              /etc/w3m/config
    fonts_local.conf        /etc/fonts/local.conf
    i3_desktop              /etc/init.d/i3_desktop
    vimrc                   $HOME/.vimrc
    fbtermrc                $HOME/.fbtermrc
    gitconfig               $HOME/.gitconfig
    i3_config               $HOME/.i3/config
    tmux.conf               $HOME/.tmux.conf
    vimperatorrc            $HOME/.vimperatorrc
    zshrc                   $HOME/.zshrc
    yuan.zsh-theme          $HOME/.oh-my-zsh/themes/yuan.zsh-theme
    mplayer_input.conf      $HOME/.mplayer/input.conf
    terminator_config       $HOME/.config/terminator/config
    mate_theme_yuan.theme   $HOME/.themes/mate_theme_yuan/index.theme
    fcitx/config            $HOME/.config/fcitx/config
    fcitx/fcitx-ui.config   $HOME/.config/fcitx/conf/fcitx-classic-ui.config 
    fcitx/fcitx_skin.conf   $HOME/.config/fcitx/skin/classic/fcitx_skin.conf
"

mkdir -p $HOME/.i3
mkdir -p $HOME/.config/terminator
mkdir -p $HOME/.themes/mate_theme_yuan

mkdir -p $HOME/.config/fcitx/conf
mkdir -p $HOME/.config/fcitx/skin/classic
mkdir -p $HOME/.mplayer

tar xf $PWD/Menlo.tar.xz -C /usr/share/fonts/truetype
ls -l --color /usr/share/fonts/truetype/Menlo-Regular.ttf
fc-cache

for FILE in $MYDOT_FILES 
do
    if [[ ${FILE:0:1} == '/' ]]
    then
        ln -sf $PWD/$ORG_FILE $FILE
        ls -l --color $FILE
    else
        ORG_FILE=$FILE
    fi
done

mv $HOME/.config/dconf/user $HOME/.config/dconf/user.bak
dconf load / <./dconf.dump
ls -l --color $HOME/.config/dconf/user

cd ./bin
for FILE in $(ls)
do
    ln -sf $PWD/$FILE $MY_BIN_FILE
    ls -l --color $MY_BIN_FILE/$FILE
done

update-rc.d i3_desktop defaults
