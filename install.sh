#!/bin/bash
MY_BIN_FILE="/usr/local/sbin"

SCRIPT_FILE=$0
while [ -L $SCRIPT_FILE ]
do
    SCRIPT_FILE=`readlink $SCRIPT_FILE`
done
cd `dirname $SCRIPT_FILE`

MYDOT_FILES="
    fbtermrc            $HOME/.fbtermrc
    gitconfig           $HOME/.gitconfig
    i3_config           $HOME/.i3/config
    smb.conf            /etc/samba/smb.conf
    tmux.conf           $HOME/.tmux.conf
    vimperatorrc        $HOME/.vimperatorrc
    vimrc               /etc/vim/vimrc
    vsftpd.conf         /etc/vsftpd.conf
    w3m_config          /etc/w3m/config
    zshrc               $HOME/.zshrc
"

for FILE in $MYDOT_FILES 
do
    if [[ $FILE =~ '/' ]]
    then
        echo link file $ORG_FILE to $FILE
        ln -sf $PWD/$ORG_FILE $FILE
        ls -l --color $FILE
    else
        ORG_FILE=$FILE
    fi
done

cd ./bin
for FILE in $(ls)
do
    ln -sf $PWD/$FILE $MY_BIN_FILE
done
ls -l --color $MY_BIN_FILE
