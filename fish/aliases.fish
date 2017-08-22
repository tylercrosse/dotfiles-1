############################################
#  Navigation - Movement & Manipulation
############################################

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end



# mv, rm, cp
alias mv 'command gmv --interactive --verbose'
alias rm 'command grm --interactive --verbose'
alias cp 'command gcp --interactive --verbose'





alias push="git push"


############################################
#  Navigation - Search & Display
############################################

# brew install the_silver_searcher
alias ag='ag --follow --hidden'
alias agc='ag --color-line-number "2;39" --color-match "30;42" --color-path "1;4;37"'

alias tre="tree -CshDL 1" # -L one level deep
alias tre2="tree -CshDLI 2 'node_modules'" # -L two levels deep excluding node_modules
alias tre3="tree -CshDLI 3 'node_modules'" # -L two levels deep
alias tred="tree -CshDd" # -d directories only
alias trea="tree -CshDaL 1" # -L one level deep, including '.' files
alias trea2="tree -CshDaLI 2" # -L two levels deep, including '.' files
alias trea3="tree -CshDaL 3" # -L two levels deep, including '.' files
alias treaa="tree -CshDa" # -a all including '.' files
alias tree="tree -CshD" # Color, size, date
alias treee="tree"

alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

alias master="git checkout master"

##############################
#  Git Aliases
##############################

alias g="git"

alias gb="git branch"
alias gba="git branch -a"
alias gch="git checkout"
alias gcb="git checkout -b"

alias gd="git diff"
alias gdc="git diff --cached"

alias ga="git add"
alias gs="git status"
alias gco="git commit"
alias gcoa="git commit --amend"
alias gcm="git commit -m"
alias gpom="git push origin master"
alias gh="git-open"

alias gbdm="git branch --merged | egrep -v '(^\*|master|dev)' | xargs git branch -d"

alias gl="git log --all --oneline --graph --decorate"
alias gla='git log --all --decorate --graph --pretty=format:"%C(yellow)%h%Creset %C(auto)%d%Creset %Cblue%ar%Creset %Cred%an%Creset %n%w(72,1,2)%s"'
alias gpr="git log --pretty=format:'%Cblue%h%Creset %Cgreen%ad%Creset | %s%C(yellow)%d%Creset [%an]' --graph --date=short --decorate"

# github-email <user> https://github.com/paulirish/github-email
# diffshot https://github.com/RobertAKARobin/diffshot

# function gc -d 'Git Clone & then cd'
#   local reponame=${1##*/}
#   reponame=${reponame%.git}
#   git clone "$1" "$reponame";
#   cd "$reponame";
# end

##############################
#  Other Aliases
##############################

alias chmox='chmod +x'

alias cask='brew cask' # i <3 u cask

# typos
alias brwe=brew
alias gti=git
alias yearn=yarn
alias where=which # sometimes i forget

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Shortcuts
alias g="git"
alias v="vim"
alias ungz="gunzip -k"

# File size
alias fs="stat -f \"%z bytes\""

# emptytrash written as a function

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias brew_update="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor; npm-check -g -u"
alias update_brew_npm_gem='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-document'

##############################
#  Network Aliases
##############################

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"
# wget sucks with certificates. Let's keep it simple.
alias wget="curl -O"

alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)
