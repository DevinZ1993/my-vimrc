# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


# Environment variables.

export PATH="/usr/local/bin:$PATH"


# Command aliases.

alias dhcp="sudo ipconfig set en1 DHCP"
alias sublime="open -a /Applications/Sublime\ Text.app"
alias vi="/usr/local/bin/vim"
alias vim="/usr/local/bin/vim"
alias ctags="`brew --prefix`/bin/ctags"
