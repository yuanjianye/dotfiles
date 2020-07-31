#!/bin/bash
MY_BIN_PATH="/usr/local/sbin"

SCRIPT_FILE=$0
while [ -L $SCRIPT_FILE ]
do
    SCRIPT_FILE=`readlink $SCRIPT_FILE`
done
cd `dirname $SCRIPT_FILE`

MYDOT_FILES="
    vsftpd.conf             /etc/vsftpd.conf
    smb.conf                /etc/samba/smb.conf
    proxychains4.conf       /etc/proxychains4.conf
    w3m_config              $HOME/.w3m/config
    vimrc                   $HOME/.vimrc
    pentadactylrc           $HOME/.pentadactylrc
    fbtermrc                $HOME/.fbtermrc
    gitconfig               $HOME/.gitconfig
    tmux.conf               $HOME/.tmux.conf
    zshrc                   $HOME/.zshrc
    yuan.zsh-theme          $HOME/.oh-my-zsh/themes/yuan.zsh-theme
    yuan_pl.zsh-theme       $HOME/.oh-my-zsh/themes/yuan_pl.zsh-theme
    mplayer_input.conf      $HOME/.mplayer/input.conf
    ranger/rifle.conf       $HOME/.config/ranger/rifle.conf
    percol.rc.py            $HOME/.percol.d/rc.py
    SpaceVim.d              $HOME/.SpaceVim.d
    konsole_yuan.colorscheme $HOME/.local/share/konsole/yuan.colorscheme
"
#create directory
mkdir -p /etc/v2ray
mkdir -p $HOME/.mplayer
mkdir -p $HOME/.percol.d
mkdir -p $HOME/.config/ranger

rm -rf $HOME/.SpaceVim.d

#create links
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

#install script files
cd ./bin
for FILE in $(ls)
do
    ln -sf $PWD/$FILE $MY_BIN_PATH
    ls -l --color $MY_BIN_PATH/$FILE
done
