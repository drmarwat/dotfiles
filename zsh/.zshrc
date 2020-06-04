export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ben"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
plugins=(vagrant svn-fast-info docker docker-compose aws)
source $ZSH/oh-my-zsh.sh
unset GIT_PAGER LESS PAGER



bindkey -v
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[comment]='none'
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

unsetopt hist_verify
unsetopt share_history
unsetopt AUTO_CD

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_TO_HOME
setopt PUSHD_IGNORE_DUPS
setopt NO_BEEP
setopt MAIL_WARNING

[[ -r ~/.aliases ]] && . ~/.aliases
[[ -r ~/.funcs ]] && . ~/.funcs

bindkey '\e.' insert-last-word

bindkey -M vicmd "j" vi-down-line-or-history
bindkey -M vicmd "k" vi-up-line-or-history

bindkey '^N' menu-complete
bindkey '^P' reverse-menu-complete

fpath+=(~/.zsh/functions)
autoload -Uz load_functions
load_functions

function precmd() {
  if [ -n "$TMUX" ]; then
    printf '\033k%s\033\\' "${PWD##*/}"
  fi
}

export EDITOR=vi

export GPG_TTY=$TTY

export PATH=~/bin:~/.local/bin:~/.gem/ruby/2.5.0/bin:$PATH:~/gocode/bin
export LESS=FXR
export LIBVIRT_DEFAULT_URI=qemu:///system
export VAGRANT_DEFAULT_PROVIDER=libvirt

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
export ANSIBLE_CONFIG=~/.ansible.cfg
