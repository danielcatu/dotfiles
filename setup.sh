#!/bin/bash

# Install TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Dependencies
brew install tmux nvim tree fzf lua tree-sitter ripgrep fd gawk coreutils tmux-mem-cpu-load
$(brew --prefix)/opt/fzf/install

# Package managers
# run after rustup-init, nvm install --lts
brew install nvm rustup luarocks yarn

# Awesome tools
brew install python3 mitmproxy && brew install --cask insomnia

# iTerm2 font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

ln -s $PWD/config/.gitconfig ~/.gitconfig
ln -s $PWD/config/.tmux.conf ~/.tmux.conf
