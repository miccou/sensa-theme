#!/usr/bin/zsh

rsync -r /workspaces/sensa-theme/sensa.zsh-theme ~/.oh-my-zsh/themes/
sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="sensa"/g' ~/.zshrc
source ~/.zshrc
zsh