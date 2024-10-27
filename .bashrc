# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Set colored prompt
PS1='\[\e[0;32m\]\u@\h\[\e[0;36m\] \W \[\e[0;32m\]\$\[\e[0m\] '

# Set terminal colors
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export CLICOLOR=1

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# My stuff
alias l='ls -ASh'
alias ll="echo 'Permissions  Links  Owner  Group  Size  Date Modified  Name' && ls -AlhS"
alias lsd="ls -lRhFXS"
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias h="history | grep -i --color=always"
alias c='clear'

bind "set completion-ignore-case on"
PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                        . "$rc"
                fi
        done
fi

unset rc