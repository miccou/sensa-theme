#!/usr/bin/zsh

rsync -r /workspaces/sensa-theme/sensa.zsh-theme $ZSH/themes/
sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="sensa"/' ~/.zshrc
source ~/.zshrc
zsh
