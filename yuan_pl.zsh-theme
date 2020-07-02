PROMPT_COLOR_1=237m
PROMPT_COLOR_2=236m
PROMPT_COLOR_3=235m
PROMPT_COLOR_4=252m
PROMPT_COLOR_5=black
PROMPT_COLOR_6=124m

#local SP=$'\ue0b0'
#local SP=' '
MY_CURRENT_DIR="%{%K{$PROMPT_COLOR_1}%F{$PROMPT_COLOR_4}%}%~"
MY_TIME='%{%K{$PROMPT_COLOR_3}%F{$PROMPT_COLOR_4}%}%D{%H:%M:%S %a}'
MY_PROMPT_HOST="%{%K{$PROMPT_COLOR_2}%F{$PROMPT_COLOR_4}%} %m:"
MY_RET="%(?:%{%F{$PROMPT_COLOR_4}%K{$PROMPT_COLOR_1}%}# :%{%F{$PROMPT_COLOR_6}%K{$PROMPT_COLOR_1}%}# )%{%F{$PROMPT_COLOR_4}%K{background}%}"

PROMPT="$MY_TIME\
$MY_PROMPT_HOST\
${MY_CURRENT_DIR}\
$MY_RET\
%{$reset_color%}"
