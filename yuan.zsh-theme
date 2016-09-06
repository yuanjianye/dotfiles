local current_dir='${PWD/#$HOME/~}'
local ret_status="%(?:%{$fg[white]%}# :%{$fg_bold[red]%}# )"
local mygit='$(git_prompt_info)'
local mytime='%D{%H:%M:%S %a}'

PROMPT_HOST="%{$fg[white]%}%n@%m:"

#ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}(%{$fg[blue]%}g:%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}X%{$fg[blue]%})"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%} )"

PROMPT="${mytime}\
$PROMPT_HOST\
${current_dir}\
${ret_status}\
%{$reset_color%}"

#${mygit}\
