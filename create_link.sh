#!/bin/bash
MY_HOME=$HOME
MY_BIN_FILE="/usr/local/sbin"
MY_ETC="/etc"
MYDOT_FILES="
    .fbtermrc           $MY_HOME/.fbtermrc                  \n
    .i3                 $MY_HOME/.i3                        \n
    i3-js.js            $MY_BIN_FILE/i3-js.js               \n 
    i3.sh               $MY_BIN_FILE/i3.sh                  \n
    md2pdf              $MY_BIN_FILE/md2pdf                 \n
    tmuxa.sh            $MY_BIN_FILE/tmuxa.sh               \n
    .tmux.conf          $MY_HOME/.tmux.conf                 \n
    .vimperatorrc       $MY_HOME/.vimperatorrc              \n
    .vimpressrc         $MY_HOME/.vimpressrc                \n
    vim                 $MY_ETC/vim                         \n
    w3m                 $MY_ETC/w3m                         \n
    zotero.sh           $MY_BIN_FILE/zotero.sh              \n
    .zshrc              $MY_HOME/.zshrc                     \n
"
echo $MYDOT_FILES
echo $MYDOT_FILES|awk '{print $1}'
echo $MYDOT_FILES|awk '{print $2}'
ls `echo $MYDOT_FILES|awk '{print $2}'`
