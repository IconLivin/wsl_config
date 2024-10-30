#!/usr/bin/bash

echo Install packages

sudo apt-get update && sudo apt-get install -y tmux zsh bpython wslu unzip

cp -r .zshrc ~/ 
cp -r .tmux ~/
cp .tmux.conf ~/
cp git.plugin ~/.zsh/git/


test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc

brew update; brew install oh-my-posh
mkdir ~/.poshthemes
cp 1_shell.omp.json ~/.poshthemes/
chmod u+rw ~/.poshthemes/*.omp.*
git clone https://github.com/Tarrasch/zsh-autoenv ~/.zsh/zsh-autoenv
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

source ~/.zshrc

sudo chsh -s $(which zsh)


