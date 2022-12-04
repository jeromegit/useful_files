# How to get and source/execute the content of this file:
alias wguf='wget -q  -N -O ~/.useful_files/bash_functions_and_aliases.sh https://raw.githubusercontent.com/jeromegit/useful_files/main/bash_functions_and_aliases.sh; \
           source ~/.useful_files/bash_functions_and_aliases.sh'

# Environment variables
export VISUAL="emacs -nw"
export EDITOR=$VISUAL

# ls the top 40 most recent files
unalias lh 2>/dev/null
lh() { /bin/ls --color=always -lt $@ | head -40 ; }
alias ls='/bin/ls --color=always'

# grep a FIX file it assumes that the first arg is the string to search/grep
#  gf string_to_search [options such as -i or -v] file(s)
unalias gf 2>/dev/null
gf() { grep --color=always $* | tr "\001" \| | grep "$1"; };

# history
alias h=history
alias hf='history -f'
unalias hh 2>/dev/null
hh() { history -f | grep --color=always $* ; }
alias hg=hh

# less
alias less='less -X'

# crontab
alias ve='export VISUAL="emacs -nw"; export EDITOR=$VISUAL'
alias cte='crontab -e'
alias ctl='crontab -l'
alias ctg='crontab -l | grep --color=always -i'

# Python/miniconda3
alias p3='/home/jerome/miniconda3/bin/python3'
alias p3d='/home/jerome/miniconda3/bin/python3 -mpdb'
alias ip3='/home/jerome/miniconda3/bin/ipython3'

# Misc
unalias psgrep 2>/dev/null
psgrep() { ps -edf |grep --color=always -i $* ; }
alias enw='emacs -nw'
alias trf="tr '\001' ' | '"
alias grep='grep --color=always -a'

# Related to fixations
alias fixtags='/home/jerome/miniconda3/bin/python3  /home/jerome/miniconda3/lib/python3.9/site-packages/fixations/fix_tags.py'
alias fixparse='/home/jerome/miniconda3/bin/python3  /home/jerome/miniconda3/lib/python3.9/site-packages/fixations/fix_parse_log.py'

# git
alias gfgr='git fetch; git rebase origin/master'


