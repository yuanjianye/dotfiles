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
    synergy-yuan.conf       $HOME/.synergy.conf
    w3m_config              $HOME/.w3m/config
    vimrc                   $HOME/.vimrc
    fbtermrc                $HOME/.fbtermrc
    gitconfig               $HOME/.gitconfig
    tmux.conf               $HOME/.tmux.conf
    zshrc                   $HOME/.zshrc
    yuan.zsh-theme          $HOME/.oh-my-zsh/themes/yuan.zsh-theme
    mplayer_input.conf      $HOME/.mplayer/input.conf
    ranger/rifle.conf       $HOME/.config/ranger/rifle.conf
    percol.rc.py            $HOME/.percol.d/rc.py
"
#create directory
mkdir -p $HOME/.mplayer

mkdir -p $HOME/.percol.d
mkdir -p $HOME/.config/ranger

#install menlo font
mkdir -p /usr/share/fonts/truetype
if [ ! -f /usr/share/fonts/truetype/Menlo-Regular.ttf ];
then
    tar xf $PWD/Menlo.tar.xz -C /usr/share/fonts/truetype
fi
if [ ! -f /usr/share/fonts/truetype/monaco.ttf ];
then
    tar xf $PWD/Monaco.tar.xz -C /usr/share/fonts/truetype
fi

ls -l --color /usr/share/fonts/truetype/Menlo-Regular.ttf
ls -l --color /usr/share/fonts/truetype/monaco.ttf

fc-list|grep Menlo >/dev/null
MENLO_INSTALLED=$?
fc-list|grep monaco  >/dev/null
MONACO_INSTALLED=$?
if [ "$MENLO_INSTALLED" != 0 ] || [ "$MONACO_INSTALLED" != 0 ];
then
    fc-cache
fi

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

vim +BundleInstall +qall
