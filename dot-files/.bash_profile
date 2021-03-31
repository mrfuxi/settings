if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias ackpy='ack --type=python'
alias pip=pip3
alias mkenv='mkvirtualenv -p python3 -a $(pwd) $(basename $(pwd)); pip install ipdb'

export EDITOR="subl --wait"
