autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' (%b)'
zstyle ':vcs_info:*' enable git

local ret_status="%(?:λ :λ )"

PROMPT='%(?.%{$fg[white]%}$(git rev-parse --is-inside-work-tree &>/dev/null && echo "%c${vcs_info_msg_0_}" || echo "%~")%{$reset_color%}.%{$fg[white]%}%~%{$reset_color%})
${ret_status} '
