# alias open="xdg-open &>/dev/null"
alias open='open_f(){ [ $# -eq 0 ] && xdg-open . || xdg-open $@; unset -f open_f }; open_f'
