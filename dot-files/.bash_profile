if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export GOPATH=$HOME/go
PATH=$PATH:$HOME/google_appengine:$GOPATH/bin:$HOME/.local/bin:$HOME/bin
export PATH

alias ccat="pygmentize -O style=monokai -f console256 -g"

