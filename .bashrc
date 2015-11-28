## prompt
# red => 31, green => 32, yellow => 33, blue => 34,
# purple => 35, cyan => 36, white => 37
export PS1='\[\033[1;36m\][\t]\u@\h:\w\[\033[0m\]\n$ '

## path
#export PATH=${HOME}/local/bin:${PATH}

## alias
alias em='emacs'
alias e='emacsclient --no-wait'
alias l="ls -F --color"
alias ls="ls -F --color"
alias la="ls -aF --color"
alias ll="ls -lF --color"
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias t='tmux'

## function
# @param target_dir
function cd() {
  builtin cd $@ && ls
}

# @param target_file
function fullpath() {
  echo "$(pwd)/$@"
}

# @param target_word
function grepz() {
  grep -rni -C 2 --color=always $@ .
}

## history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T  '
