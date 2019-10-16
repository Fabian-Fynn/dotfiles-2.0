
#    █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
#   ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
#   ███████║██║     ██║███████║███████╗█████╗  ███████╗
#   ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
#   ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
#   ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝

# Management
alias dots='cd ~/dotfiles-2.0 && vim'
alias ra='cd ~/dotfiles-2.0 && gulp && source ~/.zshrc && cd - && echo "reloaded dotfiles"'
alias addalias='vim ~/dotfiles-2.0/aliases/aliases.sh'
alias usebash='chsh -s /bin/bash'
alias usezsh='chsh -s /bin/zsh'

# Shell
alias la='ls -lah'
alias cdd='cd -' # back to last directory
alias pg='ps aux | head -n1; ps aux | grep -i'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'
alias mkdir='mkdir -pv' #create parents if needed
alias mv='mv -i' #move ask if overwrite
alias tm='tmux new /bin/zsh'
alias app='cd ~/code/workplace-app'
alias be='cd ~/code/workplace-backend'
alias brapp='cd ~/code/blackroll-app'
alias brbe='cd ~/code/blackroll-backend'


# Project navigation
alias fh='cd ~/Google\ Drive/fh/'
alias godev='cd ~/Sites'
alias fodbox='ssh fhoffmann@193.170.119.140 -p 5412'

# Network
alias ip="ifconfig|grep broadcast"  # List IPs
alias hosts='sudo vim /etc/hosts'
alias fw='~/Sites/inet_studentenheim-master/connect.sh'

# Git
alias g='git'
alias gs='git status'
alias gsh='git stash'
alias gsp='git stash pop'
alias gl='git log'
alias gw='git show'
alias gd='git diff HEAD'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit --no-verify'
alias gcm='git commit --no-verify -m'
alias gpp='git pull --rebase && git push'
alias gpl='git pull'
alias gps='git push origin'
alias go='git checkout'
alias gb='git checkout -b'
alias got='git checkout -'
alias gom='git checkout master'
alias gbr='git branch -d'
alias gcount='eval "git rev-list HEAD --count"'
alias gra='git remote add'
alias gbdall='git branch | grep -v "master" | grep -v "development" | xargs git branch -D'

# Tools
#alias mysql='sudo /usr/local/mysql/support-files/mysql.server'
alias pgstart='sudo postgres -D /usr/local/var/postgres'
alias mongo='mongod --config /usr/local/etc/mongod.conf'

# Tmux
alias tls='tmux ls'
alias tks='tmux kill-session -t'
alias ta='tmux at -t'

# Server only
alias proj='cd /home/deploy/projects'
alias ngx='cd /etc/ngnix/'
alias ngxvhost='sudo vim /etc/nginx/sites-available/lamp.fabianhoffmann.io'
alias ngxRsf='ngxReload && ngxRestart'
alias ngxRestart='sudo service nginx restart'
alias ngxReload='sudo service nginx reload'
alias ngxLog='sudo cat /var/log/nginx/error.log'

# Others
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH=$PATH:/usr/local/sbin;
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
FIREBASE_TOKEN='1/NQ34S2EQf7UOkcclFa51Onzvbf8FG5R68TubODYFExY'

alias startAndroidEmulator=' ${ANDROID_HOME}/emulator/emulator -avd Nexus_5X_API_29'
alias rni='react-native run-ios'
alias rna='react-native run-android'
