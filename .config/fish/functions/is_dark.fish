# Defined in /var/folders/gh/ps_g7zt12bq_0cdh9z3bsvpc0000gn/T//fish.BIHM8d/is_dark.fish @ line 2
function is_dark
    set is_dark (osascript -l JavaScript -e "Application('System Events').appearancePreferences.darkMode.get()")
    if [ $is_dark = 'true' ]
        return 0
    else
        return 1
    end
end
