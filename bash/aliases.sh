
#    █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
#   ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
#   ███████║██║     ██║███████║███████╗█████╗  ███████╗
#   ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
#   ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
#   ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝

# Management
alias dots='cd ~/dotfiles-2.0'
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

# Network
alias ip="ifconfig|grep broadcast"  # List IPs
alias hosts='sudo vim /etc/hosts'

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
alias gc='git commit'
alias gcm='git commit -m'
alias gpp='git pull --rebase && git push'
alias gpl='git pull'
alias gps='git push -u origin $(git symbolic-ref --short -q HEAD)'
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
alias mongodconf='mongod --config /usr/local/etc/mongod.conf'

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

alias startAndroidEmulator=' ${ANDROID_HOME}/emulator/emulator -avd Nexus_5X_API_29'
alias rni='react-native run-ios'
alias rna='react-native run-android'

#vivid

alias vps="LANG=en_US.UTF-8 ~/www/library/kwfscripts/vivid/local-vps.php"
alias v="vps local-shell"
alias cc='vps clear-cache'
alias ccw='vps clear-cache-watcher'
alias ccb='cc && vps build'
alias cct='cc --type=twig,componentView'
alias ccbw='ccb && ccw'
alias ccbm='ccb && cc memcache'
alias p='vps shell --server=production'
alias t='vps shell --server=test'
alias q='vps shell --server=qa'
alias s='vps shell'
alias exp='vps export --server=production'
alias ext='vps export --server=test'
alias exq='vps export --server=qa'
alias imp='vps import'
alias kwf='vps'
alias composer='php ~/www/library/kwfscripts/composer.phar'
alias syncwww='while :; do php ~/www/library/kwfscripts/vivid/sync.php; done'
alias mjs='vps maintenance-jobs show-jobs'
alias mje='vps maintenance-jobs run-job'

if [ -f ~/www/kwfscripts/src/console ];
then
    alias kwfscript='php ~/www/kwfscripts/src/console'
else
    alias kwfscript='php ~/www/library/kwfscripts/src/console'
fi


alias displaysHome='displayplacer "id:738DF461-1DF1-6E22-1FD6-1B5C902D75CF res:2560x1440 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0" "id:5581C0B9-B838-06FD-0260-69C9BDB744A7 res:1792x1120 hz:59 color_depth:8 scaling:on origin:(2560,279) degree:0" "id:C8ECCEFE-F6EC-D07D-90F5-2F059F5B95A3 res:2560x1440 hz:60 color_depth:8 scaling:off origin:(-2560,0) degree:0"'
alias displaysOffice='displayplacer "id:C688976E-B705-F98A-F9BE-C1ACEB43BF6A res:3840x2160 hz:60 color_depth:4 scaling:on origin:(0,0) degree:0" "id:5581C0B9-B838-06FD-0260-69C9BDB744A7 res:2304x1440 hz:59 color_depth:4 scaling:off origin:(3840,720) degree:0" "id:FB120CA9-2AC0-D564-E14A-F1564F8E6E49 res:3840x2160 hz:60 color_depth:4 scaling:off origin:(-3840,0) degree:0"'

alias syncsharedwww='php ~/www/library/kwfscripts/vivid/sync-shared.php'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DYLD_FALLBACK_LIBRARY_PATH=$HOME/anaconda/lib/:$DYLD_FALLBACK_LIBRARY_PATH
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/node-pi-firebase-adminsdk.json"
