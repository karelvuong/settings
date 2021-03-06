# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
export PS1="\n\[$(tput bold)\]\[$(tput setaf 1)\]\u \[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export EDITOR="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"

eval "$(rbenv init -)"

# Aliases
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

## Shortcuts
alias ll='ls -al'
alias editgit='subl ~/.gitconfig'
alias editbash='subl ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias gmghp='git merge gh-pages'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
alias master='git co master'
alias ghp='git co gh-pages'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
