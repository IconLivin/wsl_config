#!/usr/bin/bash

echo Install packages

sudo apt-get update && sudo apt-get install -y tmux zsh neovim bpython wslu unzip

cp -r .zshrc ~/ 
cp -r .tmux ~/
cp .tmux.conf ~/
cp git.plugin ~/.zsh/git/


mkdir ~/.config && cp -r nvim ~/.config/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
cp 1_shell.omp.json ~/.poshthemes/
chmod u+rw ~/.poshthemes/*.omp.*
git clone https://github.com/Tarrasch/zsh-autoenv ~/.zsh/zsh-autoenv
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

source ~/.zshrc

chsh -s $(which zsh)

nvm install --lts
npm install -g yarn
nvim -es +PlugInstall

yarn install ~/.config/nvim/plug/coc.nvim/

nvim -es +"CocInstall coc-pyright"
