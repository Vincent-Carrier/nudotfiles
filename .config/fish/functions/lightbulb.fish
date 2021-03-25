# Defined in /var/folders/gh/ps_g7zt12bq_0cdh9z3bsvpc0000gn/T//fish.Yb8oJA/lightbulb.fish @ line 2
function lightbulb
    if is_dark
      iterm_switch_profile 'Afterglow'
      set -Ux BAT_THEME ansi-dark
      set -U DARK true
      set kak_theme "dark-mode"
    else
      iterm_switch_profile 'Tomorrow'
      set -Ux BAT_THEME ansi-light
      set -e DARK
      set kak_theme "light-mode"
    end
    for s in (kak -l)
      echo $kak_theme | kak -p $s
    end
end
