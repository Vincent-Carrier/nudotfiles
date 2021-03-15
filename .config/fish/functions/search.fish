# Defined in /var/folders/gh/ps_g7zt12bq_0cdh9z3bsvpc0000gn/T//fish.QLzujg/search.fish @ line 2
function search
    set file (
            rg -l | fzf --sort --preview-window=down --preview="[ ! -z {} ] && rg --pretty --context 5 {q} {}" \
                --phony -q "$argv" \
                --bind "change:reload:rg -l {q}" \
    ) && kakd $file
end
