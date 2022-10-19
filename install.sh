#!/bin/bash 

# files
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.config/starship.toml
rm -rf ~/.config/alacritty

mkdir -p ~/.config/alacritty

ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/alacritty/* ~/.config/alacritty




