# Defined in /var/folders/4n/lm2k3gws2ys3qzl9ffzz38qm0000gn/T//fish.BoWYrk/lightbulb.fish @ line 2
function lightbulb
    if is_dark
      iterm_switch_profile 'Afterglow'
      set -Ux BAT_THEME ansi-dark
      set -U DARK true
      set kak_theme "dark-mode"
    else
      iterm_switch_profile 'BlulocoLight'
      set -Ux BAT_THEME ansi
      set -e DARK
      set kak_theme "light-mode"
    end
    for s in (kak -l)
      echo $kak_theme | kak -p $s
    end
end
