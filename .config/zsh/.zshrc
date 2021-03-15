HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=1000
SAVEHIST=1000
export LUX_ITERM_ALL_LIGHT='Tomorrow'
export LUX_ITERM_ALL_DARK='Tomorrow Night'
export LUX_ITERM_LIGHT='Tomorrow'
export LUX_ITERM_DARK='Tomorrow Night'
export LUX_ALL_LIST=( macos macos_desktop iterm_all )
export FZF_DEFAULT_OPTS='--bind=ctrl-j:accept,ctrl-k:kill-line'
export FZF_CTRL_T_COMMAND='fd --type f'
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'  --height=50%"

setopt autocd beep extendedglob nomatch notify
setopt noflowcontrol shortloops posixaliases

bindkey -e

# Disable control flow with \cq and \cs
stty -ixon

fpath+=$ZDOTDIR/.zfunc

autoload -Uz compinit
compinit

[ -f $ZDOTDIR/.fzf.zsh ] && source $ZDOTDIR/.fzf.zsh
bindkey '^Q' fzf-file-widget


alias e=vise
alias ls=exa
alias la='exa -TF --git-ignore --group-directories-first -s extension'
alias lg=lazygit
alias dotgit='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias ldg='lazygit --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias py='python'

alias -g H='--help | less -F'
alias -s {janet,clj,yml,yaml,toml,json,lua,md,html,css,js,ts,tsx,jsx}=vise

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

eval "$(zoxide init zsh)"

# . $(brew --prefix asdf)/asdf.sh

source  $ZDOTDIR/functions.zsh

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle colored-man-pages
antigen bundle direnv
antigen bundle docker
antigen bundle fancy-ctrl-z
antigen bundle fd
antigen bundle fzf
antigen bundle git
antigen bundle gitignore
antigen bundle npm
antigen bundle osx
antigen bundle ripgrep
antigen bundle tmux
antigen bundle zsh_reload
antigen bundle pndurette/zsh-lux
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen theme robbyrussell

antigen apply

if macos_is_dark; then
  lux iterm dark
  export LUX_THEME="dark"
  export BAT_THEME="TwoDark"
else
  lux iterm light
  export LUX_THEME="light"
  export BAT_THEME="GitHub"
fi


eval "$(direnv hook zsh)"
export PATH="$HOME/.poetry/bin:$PATH"
