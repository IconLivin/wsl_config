#!/usr/bin/bash

echo Install packages

sudo apt-get update && sudo apt-get install -y tmux zsh bpython wslu unzip

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

cp -r .zshrc ~/ 
cp -r .tmux ~/
cp .tmux.conf ~/

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc

git clone https://github.com/Tarrasch/zsh-autoenv ~/.zsh/zsh-autoenv
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

source ~/.zshrc

sudo chsh -s $(which zsh)


