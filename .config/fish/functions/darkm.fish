# Defined in /var/folders/gh/ps_g7zt12bq_0cdh9z3bsvpc0000gn/T//fish.PZaVec/darkm.fish @ line 2
function darkm
    set is_dark (osascript -l JavaScript -e "Application('System Events').appearancePreferences.darkMode.get()")
    if [ $is_dark = 'true' ]
        osascript -l JavaScript -e "Application('System Events').appearancePreferences.darkMode.set(0)" > /dev/null
    else
        osascript -l JavaScript -e \
            "Application('System Events').appearancePreferences.darkMode.set(1)" > /dev/null
    end
    lightbulb
end
