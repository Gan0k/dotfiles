alias ll='ls -alF'
alias la='ls -A'
alias l='ls -F'
alias cd..="cd .."
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias git-root='cd $(git rev-parse --show-cdup)'
alias pip3-upgradeall='pip3 list --outdated | cut -d "(" -f 1 | xargs -n1 sudo pip3 install --upgrade'
alias pip2-upgradeall='pip2 list --outdated | cut -d "(" -f 1 | xargs -n1 sudo pip2 install --upgrade'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

