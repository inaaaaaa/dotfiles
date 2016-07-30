export PS1="\[\033[1;37m\][\t]\u@\h:\w\[\033[0m\]\n$ " # white(37)
export PATH=${HOME}/bin:${HOME}/local/bin:${PATH}
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T  '

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias t='tmux'
alias g='git branch && git status --short'
alias em='emacs'
alias e='emacsclient --no-wait'

if [ $(uname) == 'Darwin' ]; then
    alias l='ls -FG'
    alias la='ls -FGa'
    alias ll='ls -FGl'
    alias ls='ls -FG'
    alias lla='ls -FGal'
else
    alias l='ls -F --color'
    alias la='ls -Fa --color'
    alias ll='ls -Fl --color'
    alias ls='ls -F --color'
    alias lla='ls -Fal --color'
fi

function cd() {
    builtin cd $1 && ls
}

test -r ~/.bashrc.local && . ~/.bashrc.local
