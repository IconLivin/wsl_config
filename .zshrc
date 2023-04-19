export DEBEMAIL="Anton Kuzhelev <anton.kuzhelev@harmonicinc.com>"

bindkey -e
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

...(){
	string="../"
	multiplier=${1:-1}
	result=""
	for (( i=0; i<multiplier; i++ )); do
		result="${result}${string}"
	done
	cd $result
}


# aliases
alias python="python.exe"
alias pip="pip.exe"
alias lh="ls -lha"
alias cls="clear"
alias acc="source ~/.zshrc && clear"
alias cdisk="cd ~/../../mnt/c"
alias abm="ssh akuzhele@il-edge-builder7"
alias pull="git pull"
alias push="git push"
alias dch='dch --upstream -Dunstable --nmu --urgency=low'
alias helper="tmux new-session \"python3 ~/helper/main.py\""
alias sshp="grep -E 'Host ([0-9]+(-[0-9])?\s?$)' ~/.ssh/config | sed -r 's/Host//g'"
alias pip_autoremove="python3 ~/.local/bin/pip_autoremove.py"
alias resc="sudo resolvconf -u && sudo cp /etc/resolvconf/resolv.conf.d/base /run/resolvconf/resolv.conf"
alias mm="sudo mount -a"
#########
set encoding=utf8
autoload -U promptinit 
promptinit
prompt bart

BAT_THEME=GitHub

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# # Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{green} %b%f'
  
#  # Set up the prompt (with git branch name)
setopt PROMPT_SUBST
#PROMPT='%{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k %{%F{125}%}%8~%b%f%k  <${vcs_info_msg_0_} > %{%F{red}%}%@%b%f%k

export POSH_THEME=$(eval echo ~$USER)/.poshthemes/1_shell.omp.json
eval "$(oh-my-posh init zsh)"
source ~/.git.plugin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion	
clear 
