# Aliases for GUI programs
alias alacritty='/Applications/Alacritty.app/Contents/MacOS/alacritty'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox'

# Aliases to specify program options
alias ls='ls -Ah --color --quoting-style=literal --group-directories-first'
alias cal='calcurse -C ~/.config/calcurse -D ~/.local/share/calcurse'
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias brew='HOMEBREW_NO_AUTO_UPDATE=1 brew'
alias grep='grep --color=auto'
alias tree='tree -aN'
alias rm='rm -i'
#function cd { builtin cd "$@" && printf '\e[H\e[3J' && ls }

# Aliases for user scripts
alias -g 2d2small='~/Dropbox/2d2small/2d2small.sh'
alias -g ndiet='~/Bin/ndiet/ndiet.py'

alias -g committed='~/scripts/committed.sh'
alias -g ufetch='~/scripts/ufetch.sh'
alias -g peek='~/scripts/peek.py'

alias -g tfin='~/scripts/retired/tfin/oldtfin.sh'
alias -g Omega='~/scripts/retired/Omega.py'
alias -g tmd='~/scripts/retired/tmd.sh'
