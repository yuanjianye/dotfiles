local COLOR_1=239m
local COLOR_2=238m
local COLOR_3=237m
local COLOR_4=252m
local COLOR_5=black
local COLOR_6=124m

local SP=$'\ue0b0'
local MY_CURRENT_DIR="%{%K{$COLOR_1}%F{$COLOR_2}%}$SP%{%K{$COLOR_1}%F{$COLOR_4}%}%~"
local MY_TIME='%{%K{$COLOR_3}%F{$COLOR_4}%}%D{%H:%M:%S %a}'
local MY_PROMPT_HOST="%{%K{$COLOR_2}%F{$COLOR_3}%}$SP%{%K{$COLOR_2}%F{$COLOR_4}%}%m:"
local MY_RET="%(?:%{%K{$COLOR_5}%F{$COLOR_1}%}$SP:%{%F{$COLOR_6}%K{$COLOR_5}%}$SP)%{%F{white}%}"

PROMPT="$MY_TIME\
$MY_PROMPT_HOST\
${MY_CURRENT_DIR}\
$MY_RET\
%{$reset_color%}"
