set -a PATH "/opt/homebrew/bin"
set -a PATH $HOME/.local/bin
set -a PATH $HOME/go/bin
set -a PATH $HOME/.cargo/bin
set -a PATH /Users/vincent/Library/Caches/.wasm-pack/.wasm-bindgen-cargo-install-0.2.73/bin
set -gx EDITOR kakd
set -gx FZF_DEFAULT_COMMAND 'fd --type f'
set -gx FZF_CTRL_T_COMMAND 'fd --type f'
set -gx FZF_DEFAULT_OPTS '--bind=ctrl-j:accept,ctrl-k:kill-line'


if [ (uname -s) = 'Darwin' ]
  if test -t 0
	  # set -a PATH /Users/vincent/.rustup/toolchains/nightly-aarch64-apple-darwin/bin/
	  test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

    lightbulb
  end
end

if test -t 0
	bind \cq 'set f (fzf --preview \'bat --color=always {}\' --preview-window=down) && kakd $f && clear && commandline -f repaint'
	bind \cu 'if test -z (commandline); search && commandline -f repaint; else; commandline -f backward-kill-line; end'
	bind \ck 'if test -z (commandline); lf && commandline -f repaint; else; commandline -f kill-line; end'
	bind \cg 'if test -z (commandline); lazygit && commandline -f repaint; else; commandline -f kill-line; end'
	bind \cz 'if test -z (commandline); fg && commandline -f repaint; else; commandline -f undo; end'
	starship init fish | source
	direnv hook fish | source
end


# ghcup-env
# set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
# test -f /Users/vincent/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/vincent/.ghcup/bin $PATH


# bass (ssh-agent -s) > /dev/null
