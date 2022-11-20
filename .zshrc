export DEBEMAIL="Anton Kuzhelev <anton.kuzhelev@harmonicinc.com>"

bindkey -e
bindkey '5C' forward-word
bindkey '5D' backward-word
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zzz() {
	if [ $# -eq 0 ]
	  then
	    container="confd"
	else
	    container=$1
	fi
	echo $container
}

# aliases
alias python="python.exe"
alias pip="pip.exe"
alias lh="ls -lha"
alias cls="clear"
alias acc="source ~/.zshrc && clear"
alias cdisk="cd ~/../../mnt/c"
alias abm="ssh akuzhele@il-edge-builder7"
alias ...="cd .."
alias pull="git pull"
alias push="git push"
alias dch='dch --upstream -Dunstable --nmu --urgency=low'
alias helper="TMUX='' tmux new-session -s helper 'python3 ~/helper/main.py'"
alias sshp="grep -E 'Host ([0-9])' ~/.ssh/config | sed -r 's/Host//g'"
alias ssh=sshrc
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
PROMPT='%{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k %{%F{125}%}%8~%b%f%k  <${vcs_info_msg_0_} > %{%F{red}%}%@%b%f%k
<%{%F{red}%}%n%f> '

#PROMPT="%{%F{red}%}%n%b%f%k%9(v. . %{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k )%{%F{default}%}%8~%b%f%k%<<%8v%195(l. . %{%F{default}%}%D%b%f%k)%203(l.. %{%F{red}%}%@%b%f%k)%9(v.
#%{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k.)
#%n%  ${vcs_info_msg_0_}" 

tmux
clear

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
