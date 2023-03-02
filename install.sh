#!/usr/bin/zsh

curl -LJO --output-dir ~/.oh-my-zsh/themes/ https://raw.githubusercontent.com/miccou/sensa-theme/master/sensa.zsh-theme 
sed -i '/ZSH_THEME=".*"/d' ~/.zshrc
echo 'ZSH_THEME="sensa"'>>~/.zshrc
source ~/.zshrc
