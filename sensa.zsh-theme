# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
PROMPT='%{$FG[120]%}%n@%m %{$FG[231]%}➜  %B%{$FG[159]%}%4~%b $(git_prompt_info)%{$FG[231]%} %(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[210]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$FG[231]%}"
