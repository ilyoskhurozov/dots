# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
if [[ $UID = 0 ]]; then
  PS1="\[\033[1;31m\]\w > \[\033[0m\]" #red
else
  PS1="\[\033[1;36m\]\w > \[\033[0m\]" #cyan
fi

export TERM=alacritty
export EDITOR=nvim

lfcd () {
  tmp="$(mktemp)"
  lf -last-dir-path="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -f "$tmp"
    if [ -d "$dir" ]; then
      if [ "$dir" != "$(pwd)" ]; then
        cd "$dir"
      fi
    fi
  fi
}

# Aliases

alias lf='lfcd'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -alFh'
alias grep='grep --color=auto'
alias df='df -h'
alias free='free -mt'
alias mirrors='sudo reflector -l 30 -f 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias orphans='sudo pacman -Rnsc $(pacman -Qtdq)'
