#!/bin/bash
MY_BIN_PATH="/usr/local/sbin"

SCRIPT_FILE=$0
while [ -L $SCRIPT_FILE ]
do
    SCRIPT_FILE=`readlink $SCRIPT_FILE`
done
cd `dirname $SCRIPT_FILE`

MYDOT_FILES="
    fonts_local.conf        /etc/fonts/local.conf
    vimrc                   $HOME/.vimrc
    zshrc                   $HOME/.zshrc
    yuan.zsh-theme          $HOME/.oh-my-zsh/themes/yuan.zsh-theme
    terminator_config       $HOME/.config/terminator/config
    mate_theme_yuan.theme   $HOME/.themes/mate_theme_yuan/index.theme
    fcitx/config            $HOME/.config/fcitx/config
    fcitx/fcitx-ui.config   $HOME/.config/fcitx/conf/fcitx-classic-ui.config
    fcitx/fcitx_skin.conf   $HOME/.config/fcitx/skin/classic/fcitx_skin.conf
    percol.rc.py            $HOME/.percol.d/rc.py
    bin/openfile            /usr/local/bin/openfile 
    bin/cscope_file_gen.sh  /usr/local/bin/cscope_file_gen.sh
"
#create directory
mkdir -p $HOME/.i3
mkdir -p $HOME/.config/terminator
mkdir -p $HOME/.themes/mate_theme_yuan

mkdir -p $HOME/.config/fcitx/conf
mkdir -p $HOME/.config/fcitx/skin/classic

#install menlo font
if [ ! -f /usr/share/fonts/truetype/Menlo-Regular.ttf ];
then
    tar xf $PWD/Menlo.tar.xz -C /usr/share/fonts/truetype
fi
ls -l --color /usr/share/fonts/truetype/Menlo-Regular.ttf
fc-list|grep Menlo >/dev/null
if [ "$?" != 0 ];
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

#import dconf settings
cp $HOME/.config/dconf/user $HOME/.config/dconf/user.bak
dconf load / <./dconf_common.dump
ls -l --color $HOME/.config/dconf/user

update-rc.d i3_desktop defaults
echo ":BundleInstall"|vim 2>/dev/null
