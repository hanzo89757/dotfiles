rm -rf .git
git init

rm -rf zsh/plugins
rm -rf tmux/plugins

# zsh
git submodule add --depth 1 https://gitee.com/mirrors/oh-my-zsh.git zsh/plugins/oh-my-zsh
git submodule add --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git zsh/plugins/oh-my-zsh-custom/plugins/zsh-syntax-highlighting
git submodule add --depth 1 https://gitee.com/romkatv/powerlevel10k.git zsh/plugins/oh-my-zsh-custom/themes/powerlevel10k

# tmux
git submodule add --depth 1 https://github.com/tmux-plugins/tpm tmux/plugins/tpm
git submodule add --depth 1 https://github.com/tmux-plugins/tmux-sensible tmux/plugins/tmux-sensible
git submodule add --depth 1 https://github.com/christoomey/vim-tmux-navigator tmux/plugins/vim-tmux-navigator
