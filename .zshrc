export PS1="%~ %# "
export WORDCHARS=”
autoload -Uz compinit && compinit
alias cleanup='git branch --merged | egrep -v "(^\*|main)" | xargs git branch -d && git remote prune origin'
