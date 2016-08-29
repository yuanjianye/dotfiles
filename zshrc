# Path to your oh-my-zsh installation.
export ZSH=/root/.oh-my-zsh

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
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
#jdk path
export PATH="/usr/local/java/jdk1.6.0_35/bin:$PATH"
#hisi path
export PATH="$PATH:/opt/hisi-linux/x86-arm/arm-hisiv200-linux/target/bin"
#ndk path
export PATH="$PATH:/home/android/ndk/ndk-arm-android-9-r8b-toolchain/bin"
#amlogic path
export PATH="$PATH:/opt/gnutools/arc2.3-p0/elf32-4.2.1/bin:/opt/gnutools/arc2.3-p0/uclibc-4.2.1/bin:/opt/gnutools/arc-4.8-amlogic-20130904-r2/bin:/opt/gcc-linaro-arm-linux-gnueabihf/bin:/opt/CodeSourcery/Sourcery_G++_Lite/bin:/opt/CodeSourcery/Sourcery_G++_Lite/arm-none-eabi/bin:/opt/CodeSourcery/Sourcery_G++_Lite/arm-none-linux-gnueabi/bin:/opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin:/opt/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin"

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
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias locate="locate --regex"
alias ack="ack-grep --smart-case"
alias feh="feh -F -q -r --zoom max"

alias s='fanyi'

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
alias -s chm=firefox
alias -s epub=firefox
alias -s pdf=firefox

alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s pdf='firefox'

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8
export JAVA_HOME="/usr/local/java/jdk1.6.0_35"

if [ "$DISPLAY" = "" ];
then
    export DISPLAY=":1"
fi
