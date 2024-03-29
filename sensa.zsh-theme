local prompt_username
if [ ! -z "${GITHUB_USER}" ]; then 
    prompt_username="@${GITHUB_USER}"
else
    prompt_username="%n@%m"
fi

local prompt_venv
if [ ! -z "${VIRTUAL_ENV}" ]; then
    prompt_venv="(${VIRTUAL_ENV##*/}) "
else
    prompt_venv=""
fi

PROMPT='%F{32}${prompt_venv}%f%{$FG[120]%}${prompt_username}%{$FG[231]%} %B%{$FG[183]%}%4~%b $(git_prompt_info)%{$FG[231]%} %(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[210]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$FG[231]%}"