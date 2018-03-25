export PS1="\w $ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Golang config
export GOPATH=""
export GOVERSION=$(brew list go | head -n 1 | cut -d '/' -f 6)
export GOROOT=$(brew --prefix)/Cellar/go/${GOVERSION}/libexec
export PATH=${GOPATH}/bin:$PATH
