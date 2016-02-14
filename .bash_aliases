alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cd..="cd .."
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias pcat='curl -F "paste=<-" http://p.mvdan.cc'
alias pcatclip='xsel -b | pcat | xsel -b'
alias matlab='$HOME/Software/MATLAB/bin/matlab'
alias git-root='cd $(git rev-parse --show-cdup)'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

