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
    fonts_local.conf        /etc/fonts/local.conf
    i3_desktop              /etc/init.d/i3_desktop
    yuanjianye.service      /etc/systemd/system/yuanjianye.service
    synergy-yuan.conf       $HOME/.synergy.conf
    w3m_config              $HOME/.w3m/config
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
    ranger/rifle.conf       $HOME/.config/ranger/rifle.conf
    percol.rc.py            $HOME/.percol.d/rc.py
    kdeglobals              $HOME/.kde/share/config/kdeglobals
    moc_config              $HOME/.moc/config
    moc_keymap              $HOME/.moc/keymap
    ptpython_config.py      $HOME/.ptpython/config.py
"
#create directory
mkdir -p $HOME/.i3
mkdir -p $HOME/.config/terminator
mkdir -p $HOME/.themes/mate_theme_yuan

mkdir -p $HOME/.config/fcitx/conf
mkdir -p $HOME/.config/fcitx/skin/classic
mkdir -p $HOME/.mplayer

mkdir -p $HOME/.percol.d
mkdir -p $HOME/.config/ranger

mkdir -p $HOME/.moc
mkdir -p $HOME/.ptpython

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

#import dconf settings
mv $HOME/.config/dconf/user $HOME/.config/dconf/user.bak
dconf load / <./dconf.dump
ls -l --color $HOME/.config/dconf/user
xrdb -merge ./xterm.Xresources

#install script files
cd ./bin
for FILE in $(ls)
do
    ln -sf $PWD/$FILE $MY_BIN_PATH
    ls -l --color $MY_BIN_PATH/$FILE
done

update-rc.d i3_desktop defaults
vim +BundleInstall +qall
