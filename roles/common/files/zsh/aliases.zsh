# Aliases in this file are bash and zsh compatible

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# emacs
function em() {
    emacsclient -n -e "(if (> (length (frame-list)) 1) 't)" | grep t
    if [ "$?" = "1" ]; then
        emacsclient -c -n -a "" "$@"
    else
        emacsclient -n -a "" "$@"
    fi
}
alias sem='sudo emacs'
alias tem='emacs -t'

alias ae='em ~/.zsh/aliases.zsh' #alias edit
alias ar='source ~/.zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='em ~/.zshrc'

# Git Aliases
# Staged and cached are the same thing
alias add='git add -A'
alias co='git co'
alias gam='git amend --no-edit'
alias gap='git add -p'
alias gb='git b'
alias gbb='git bisect bad'
alias gbg='git bisect good'
alias gbi='git rebase --interactive'
alias gci='git ci'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gcm='git ci -m'
alias gco='git co'
alias gcp='git cp'
alias gd='git diff'
alias gdc='git diff --cached -w'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gds='git diff --staged -w'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gfp='git fetch --prune'
alias ggrc='git rebase --continue'
alias gi='emacs .gitignore'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias gnb='git nb' # new branch aka checkout -b
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gpub='grb publish'
alias gra='git rebase --abort'
alias grad='git remote add'
alias gre='git rebase'
alias grr='git remote rm'
alias grs='git reset'
alias grsh='git reset --hard'
alias grv='git remote -v'
alias gs='git status'
alias gsa='git stash apply'
alias gsh='git show'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gsp='git stash pop'
alias gst='git stash'
alias gt='git t'
alias gtr='grb track'
alias gunc='git uncommit'
alias guns='git unstage'

# Common shell functions
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

alias ka9='killall -9'
alias k9='kill -9'

alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'
