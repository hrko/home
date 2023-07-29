#!/bin/bash

install -m 644 -b ./.profile ~/.profile
install -m 644 -b ./.bashrc  ~/.bashrc
touch ~/.profile.local
touch ~/.bashrc.local
install -m 755 -d ~/.config/fish/conf.d
install -m 644 -b -D ./.config/starship.toml     ~/.config/starship.toml
install -m 644 -b -D ./.config/fish/fish_plugins ~/.config/fish/fish_plugins
install -m 644 -b -D ./.config/fish/config.fish  ~/.config/fish/config.fish
touch ~/.config/fish/conf.d/local.fish
