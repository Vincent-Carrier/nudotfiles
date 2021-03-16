set -a PATH $HOME/.local/bin
set -a PATH $HOME/go/bin
set -gx EDITOR kakd

bind \cq 'set f (fzf --preview \'bat --color=always {}\' --preview-window=down) && kakd $f && clear && commandline -f repaint'
bind \cu 'if test -z (commandline); search && commandline -f repaint; else; commandline -f backward-kill-line; end'
bind \ck 'if test -z (commandline); lf && commandline -f repaint; else; commandline -f kill-line; end'
bind \cg 'if test -z (commandline); lazygit && commandline -f repaint; else; commandline -f kill-line; end'
bind \cz 'if test -z (commandline); fg && commandline -f repaint; else; commandline -f undo; end'

set fish_vi_force_cursor true

if [ (uname -s) = 'Darwin' ]
  test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

  if test -t 0
    lightbulb
  end
end

starship init fish | source
direnv hook fish | source
