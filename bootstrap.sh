#!/bin/bash

# setup alacritty
brew install alacritty
# https://github.com/alacritty/alacritty/commit/2a676dfad837d1784ed0911d314bc263804ef4ef
defaults write org.alacritty AppleFontSmoothing -int 0

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

brew install tmux nvim tree fzf lua nvm tree-sitter ripgrep fd gawk coreutils tmux-mem-cpu-load shellcheck ccls
$(brew --prefix)/opt/fzf/install

# package managers
# run after rustup-init, nvm install --lts
brew install npm yarn rustup luarocks

# docker
brew install colima docker docker-compose

# awesome tools
brew install git-delta lazygit lazydocker mitmproxy ngrok
brew install --cask raycast table-tool

# the best font ever
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

# zsh theme
brew install romkatv/powerlevel10k/powerlevel10k

# nvim processes from the shell
pip3 install neovim-remote

# config files symlinks
ln -s "$PWD/alacritty/alacritty.yml" ~/.config/alacritty.yml

ln -s "$PWD/git/.gitconfig" ~/.gitconfig
ln -s "$PWD/tmux/.tmux.conf" ~/.tmux.conf
ln -s "$PWD/zsh/.zshrc" ~/.zshrc

ln -s "$PWD/nvim" ~/.config/nvim
ln -s "$PWD/.ssh/config" ~/.ssh/config

ln -s "$PWD/git/lazygit.yml" ~/Library/Application\ Support/lazygit/config.yml
