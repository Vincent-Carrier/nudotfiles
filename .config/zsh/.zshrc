HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd beep extendedglob nomatch notify
setopt noflowcontrol shortloops posixaliases
alias -s {yml,yaml,toml,json,lua,sh,zsh,md,html,css,js,ts,tsx,jsx}=vise

bindkey -e

# Disable control flow with \cq and \cs
stty -ixon

autoload -Uz compinit
compinit

[ -f $ZDOTDIR/.fzf.zsh ] && source $ZDOTDIR/.fzf.zsh
bindkey '^Q' fzf-file-widget

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle colored-man-pages
antigen bundle direnv
antigen bundle docker
antigen bundle fd
antigen bundle fzf
antigen bundle git
antigen bundle gitignore
antigen bundle osx
antigen bundle ripgrep
antigen bundle pndurette/zsh-lux
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen theme robbyrussell

antigen apply

alias e=vise
alias lg=lazygit
alias dotgit='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias ldg='lazygit --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias zconf="vise $ZDOTDIR/.zshrc && zsh"


test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

