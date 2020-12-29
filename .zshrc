#if [ "$TMUX" = "" ]; then tmux new /bin/zsh; fi
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wedisagree"

# Terminal Themes
# https://github.com/lysyi3m/osx-terminal-themes

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


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

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH=$PATH:/usr/local/sbin;
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
FIREBASE_TOKEN='1/NQ34S2EQf7UOkcclFa51Onzvbf8FG5R68TubODYFExY'
export GITLAB_NPM_TOKEN=R6fvXYQ444mP2Uf1XzR-

alias startAndroidEmulator=' ${ANDROID_HOME}/emulator/emulator -avd Nexus_5X_API_29'
alias startAndroidEmulatorLatest=' ${ANDROID_HOME}/emulator/emulator -avd Pixel_2_API_30'
alias rni='react-native run-ios'
alias rna='react-native run-android'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DYLD_FALLBACK_LIBRARY_PATH=$HOME/anaconda/lib/:$DYLD_FALLBACK_LIBRARY_PATH
# export GOOGLE_APPLICATION_CREDENTIALS="/Users/fabian/windhund-office-dev-firebase-adminsdk.json"
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/node-pi-firebase-adminsdk.json"


#  ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
#  ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
#  █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
#  ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
#  ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
#  ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

###########
## SHELL ##
###########

# Create and change dir
mcd () {
    mkdir -pv $1
    cd $1
}


############
## SERVER ##
############


droplet () {
    addr='188.166.32.149'

    eval "ssh fabi@$addr"
}

code () {
  VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;
}

