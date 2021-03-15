bind -M insert \cq 'set f (fzf --preview \'bat --color=always {}\' --preview-window=down) && kakd $f && clear && commandline -f repaint'
bind -M insert \cu 'if test -z (commandline); lf && commandline -f repaint; else; commandline -f backward-kill-line; end'
bind -M insert \ck 'if test -z (commandline); lf && commandline -f repaint; else; commandline -f kill-line; end'
bind -M insert \cg 'if test -z (commandline); lazygit && commandline -f repaint; else; commandline -f kill-line; end'
bind -M insert \cz 'if test -z (commandline); fg && commandline -f repaint; else; commandline -f undo; end'
bind \cs -M insert 'search; commandline -f repaint'

set fish_vi_force_cursor true

fish_add_path $HOME/go/bin
fish_add_path $HOME/.local/bin


if [ (uname -s) = 'Darwin' ]
  test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

  if test -t 0
    lightbulb
  end
end

starship init fish | source
direnv hook fish | source
