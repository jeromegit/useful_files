# How to get and source/execute the content of this file:
alias wguf='wget -q  -N -O ~/.useful_files/bash_functions_and_aliases.sh https://raw.githubusercontent.com/jeromegit/useful_files/main/bash_functions_and_aliases.sh; \
           source ~/.useful_files/bash_functions_and_aliases.sh'

# Environment variables
export VISUAL="emacs -nw"
export EDITOR=$VISUAL

# ls the top 40 most recent files
lh() { /bin/ls --color=tty -lt $@ | head -40 ; }

# grep a FIX file it assumes that the first arg is the string to search/grep
#  gf string_to_search [options such as -i or -v] file(s)
gf() { grep --color=always $* | tr "\001" \| | grep "$1"; };

# history
alias h=history
hh() { history | grep --color=always $* ; }
alias hg=hh

# less
alias less='less -X'

# crontab
alias ve='export VISUAL="emacs -nw"; export EDITOR=$VISUAL'
alias cte='crontab -e'
alias ctl='crontab -l'
alias ctg='crontab -l | grep --color=always -i'

# Misc
psgrep() { ps -edf |grep --color=always -i $* ; }
alias p3='/home/jerome/miniconda3/bin/python3'
alias p3d='/home/jerome/miniconda3/bin/python3 -mpdb'
alias ip3='/home/jerome/miniconda3/bin/ipython3'


