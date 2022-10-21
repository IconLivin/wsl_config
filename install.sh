#!/usr/bin/bash

echo Install packages

sudo apt-get update && sudo apt-get install -y tmux zsh neovim bpython

cp -r .zshrc .tmux.conf .tmux ~/ 

mkdir ~/.config && cp -r nvim ~/.config/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

source ~/.zshrc

nvm install --lts
npm install -g yarn 
