rsync -r sensa.zsh-theme ~/.oh-my-zsh/themes/
sed -i '/(ZSH_THEME=".*")/d' ~/.zshrc
echo 'ZSH_THEME="devcontainers"'>>~/.zshrc
source ~/.zshrc