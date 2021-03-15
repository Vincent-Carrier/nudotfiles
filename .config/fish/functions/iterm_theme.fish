# Defined in /var/folders/gh/ps_g7zt12bq_0cdh9z3bsvpc0000gn/T//fish.lSrQTr/iterm_theme.fish @ line 2
function iterm_theme
    osascript -l JavaScript < (echo "
windows = Application('iTerm').windows()
for (w in windows) {
    tabs = windows[w].tabs()
    for (t in tabs) {
        sessions = tabs[t].sessions()
        for (s in sessions) {
            sessions[s].colorPreset = '$1'
        }
    }
}
" | psub)
end
