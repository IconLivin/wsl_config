#!/usr/bin/bash

echo Install packages

sudo apt-get install -y tmux zsh neovim

cp -r .zshrc .tmux.conf .tmux ~/ 

mkdir ~/.config && cp -r nvim ~/.config/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

source ~/.zshrc

nvm install --lts
npm install -g yarn 
