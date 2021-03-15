# Defined in - @ line 1
function dotgit --wraps='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' --description 'alias dotgit=git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
  git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $argv;
end
