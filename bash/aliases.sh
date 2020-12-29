
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
alias app='cd ~/code/workplace-app'
alias be='cd ~/code/workplace-backend'
alias bgm='cd ~/code/bgm'
alias dropdb='cd ~/code/bgm && dotenv -- npm --prefix api run typeorm:run && dotenv -- npm --prefix api run typeorm:run'
alias sync='cd ~/code/bgm && dotenv -- npm --prefix api run sync:exercises'
alias fix='cd ~/code/bgm && dotenv -- npm --prefix api run fixtures 10'
alias api='cd ~/code/bgm && npm run dev:api'
alias admin='cd ~/code/bgm && npm run dev:admin'
alias login='cd ~/code/bgm && npm run dev:login'
alias frontend='cd ~/code/bgm && npm run dev:frontend'
alias proxy='cd ~/code/bgm && npm run proxy'

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
alias gc='git commit'
alias gcm='git commit -m'
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

alias startAndroidEmulator=' ${ANDROID_HOME}/emulator/emulator -avd Nexus_5X_API_29'
alias startAndroidEmulatorLatest=' ${ANDROID_HOME}/emulator/emulator -avd Pixel_2_API_30'
alias rni='react-native run-ios'
alias rna='react-native run-android'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DYLD_FALLBACK_LIBRARY_PATH=$HOME/anaconda/lib/:$DYLD_FALLBACK_LIBRARY_PATH
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/node-pi-firebase-adminsdk.json"
