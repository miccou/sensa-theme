#!/usr/bin/zsh

curl -LJO --output-dir ~/.oh-my-zsh/themes/ https://raw.githubusercontent.com/miccou/sensa-theme/master/sensa.zsh-theme 
rsync -r sensa.zsh-theme ~/.oh-my-zsh/themes/
sed -i '/ZSH_THEME=".*"/d' ~/.zshrc
echo 'ZSH_THEME="sensa"'>>~/.zshrc
source ~/.zshrc