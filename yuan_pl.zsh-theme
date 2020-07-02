local COLOR_1=237m
local COLOR_2=236m
local COLOR_3=235m
local COLOR_4=252m
local COLOR_5=black
local COLOR_6=124m

#local SP=$'\ue0b0'
local SP=' '
local MY_CURRENT_DIR="%{%K{$COLOR_1}%F{$COLOR_2}%}$SP%{%K{$COLOR_1}%F{$COLOR_4}%}%~"
local MY_TIME='%{%K{$COLOR_3}%F{$COLOR_4}%}%D{%H:%M:%S %a}'
local MY_PROMPT_HOST="%{%K{$COLOR_2}%F{$COLOR_3}%}$SP%{%K{$COLOR_2}%F{$COLOR_4}%}%m:"
local MY_RET="%(?:%{%F{$COLOR_4}%K{$COLOR_1}%}# :%{%F{$COLOR_6}%K{$COLOR_1}%}# )%{%F{$COLOR_4}%K{background}%}"

PROMPT="$MY_TIME\
$MY_PROMPT_HOST\
${MY_CURRENT_DIR}\
$MY_RET\
%{$reset_color%}"
