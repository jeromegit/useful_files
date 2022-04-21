# How to get and source/execute the content of this file:
alias wguf='mkdir -p ~/.useful_files; wget -q  -N -O ~/.useful_files/bash_functions_and_aliases.sh https://raw.githubusercontent.com/jeromegit/useful_files/main/bash_functions_and_aliases.sh; \
           source ~/.useful_files/bash_functions_and_aliases.sh'

# Environment variables
export VISUAL="emacs -nw"
export EDITOR=$VISUAL

# ls the top 40 most recent files
lh() { /bin/ls --color=tty -lt $@ | head -40 ; }

# grep a FIX file it assumes that the first arg is the string to search/grep
#  gf string_to_search [options such as -i or -v] file(s)
gf() { grep  $* | tr "\001" \| | grep "$1"; };

# history
alias h=history
hh() { history | grep $* ; }
alias hg=hh

# less
alias less='less -X'

# crontab
alias ve='export VISUAL="emacs -nw"; export EDITOR=$VISUAL'
alias cte='crontab -e'
alias ctl='crontab -l'
alias ctg='crontab -l | grep -i'

