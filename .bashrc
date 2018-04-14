export PS1="\[\033[1;36m\][\t]:\w:$?\[\033[0m\]\n$ "
export PATH=${HOME}/bin:${PATH}

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

if [ $(uname) == 'Darwin' ]
then
    alias l='ls -F -G'
    alias ls='ls -F -G'
    alias la='ls -Fa -G'
    alias ll='ls -Fl -G'
else
    alias l='ls -F --color'
    alias ls='ls -F --color'
    alias la='ls -Fa --color'
    alias ll='ls -Fl --color'
fi

function cd() {
    builtin cd $1 && ls
}

test -r ~/.bashrc.local && . ~/.bashrc.local
