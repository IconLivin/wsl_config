#!/usr/bin/bash

echo Install packages

sudo apt-get update && sudo apt-get install -y tmux zsh neovim bpython wslu unzip

cp -r .zshrc ~/ 
cp -r .tmux ~/
cp .tmux.conf ~/
cp .git.plugin ~/


mkdir ~/.config && cp -r nvim ~/.config/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip

source ~/.zshrc

nvm install --lts
npm install -g yarn
nvim -es +PlugInstall

yarn install ~/.config/nvim/plug/coc.nvim/

nvim -es +"CocInstall coc-pyright"
