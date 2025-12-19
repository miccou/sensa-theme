local prompt_username
if [ !  -z "${GITHUB_USER}" ]; then
    prompt_username="@${GITHUB_USER}"
else
    prompt_username="%n@%m"
fi

# Function to dynamically display virtual environment
prompt_virtualenv() {
    if [ ! -z "${VIRTUAL_ENV}" ]; then
        echo "%F{81}(${VIRTUAL_ENV##*/}) %f"
    fi
}

PROMPT='$(prompt_virtualenv)%{$FG[120]%}${prompt_username}%{$FG[231]%} %{$FG[183]%}%4~$(git_prompt_info)%{$FG[231]%} %(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[210]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$FG[231]%}"