# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="yuan"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
#plugins=(svn-fast-info)
plugins=(autojump adb)

# User configuration

#standard path
#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"

#export USER="root"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
#source $HOME/.py3/bin/activate

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#set -o vi
alias mtr='mtr --curses'
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias ps='ps -aux'
alias vi='vim'
alias grep="grep --color=auto"
alias fo="openfile"

alias d='cd $(dirs -lp|percol)'

alias -s rb=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s mk=vi
alias -s makefile=vi
alias -s Makefile=vi
alias -s log=vi
alias -s conf=vi
#alias -s py=vi
#alias -s js=vi

alias -s html=firefox
alias -s md=firefox

alias -s gz='tar -xvf'
alias -s tgz='tar -xvf'
alias -s zip='unzip'
alias -s bz2='tar -xvf'

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8

if [ "$DISPLAY" = "" ];
then
    export DISPLAY=":0"
fi

function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi

function f() {
    if [ "$*" = "" ];
    then
        MPATH="$(find|grep -v '/.git/'|percol)"
    else
        MPATH="$(find $*|grep -v '/.git/'|percol)"
    fi

    if [ "$MPATH" = "" ];
    then
        return
    fi

    if [ -d $MPATH ];
    then
        cd $MPATH
    else
        openfile $MPATH
    fi
    echo $MPATH
}

function m() {
    if [ "$*" != "" ];
    then
        MPATH="$(locate "$*"|percol)"
    fi

    if [ "$MPATH" = "" ];
    then
        return
    fi

    if [ -d $MPATH ];
    then
        cd $MPATH
    else
        openfile $MPATH
    fi
    echo $MPATH
}

function a() {
    if [ "$*" != "" ];
    then
        MGREP="$(ack $*|percol)"
    else
        return
    fi

    if [ "$MGREP" = "" ];
    then
        return
    fi

    vim "+set cursorline" $(echo "$MGREP"|awk -F : '{print $1 " +" $2}')

}
