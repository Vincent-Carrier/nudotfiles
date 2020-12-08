# Dotfiles


```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install fish neovim tmux gh lazygit lf
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

```sh
gh repo clone nudotfiles dotfiles-tmp -- --separate-git-dir=$HOME/dotfiles
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm -rf dotfiles-tmp
cd ~/dotfiles
alias dotgit='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
dotgit config status.showUntrackedFiles no
```
