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


############################################
#  Navigation - Search & Display
############################################

# brew install the_silver_searcher
alias ag='ag --follow --hidden'
# custom colors and max line length of 80
alias agc='ag --width 80 --color-line-number "2;39" --color-match "30;42" --color-path "1;4;37"'

alias tre="tree -CshDL 1" # -L one level deep
alias tre2="tree -CshDLI 2 'node_modules'" # -L two levels deep excluding node_modules
alias tre3="tree -CshDLI 3 'node_modules'" # -L three levels deep excluding node_modules
alias tred="tree -CshDd" # -d directories only
alias tred2="tree -CshDdLI 2 'node_modules'" # -d directories only, two levels deep excluding node_modules
alias tred3="tree -CshDdLI 3 'node_modules'" # -d directories only, three levels deep excluding node_modules
alias trea="tree -CshDaL 1" # -L one level deep, including '.' files
alias trea2="tree -CshDaL 2" # -L two levels deep, including '.' files
alias trea3="tree -CshDaL 3" # -L two levels deep, including '.' files
alias treaa="tree -CshDa" # -a all including '.' files
alias tree="tree -CshD" # Color, size, date
alias treee="tree" # default behaviour - NOTE 'command tree' is the same

alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

alias master="git checkout master"

##############################
#  Git Aliases
##############################

alias g="git"

alias gb="git branch"
alias gba="git branch -a" # all branches
# all branches sorted by date
alias gbad="git for-each-ref --sort='-authordate:iso8601' --color=auto --format=' %(authordate:relative)%09%1B[0;32m%(refname:short)%1B[m' refs/heads; git for-each-ref --sort='-authordate:iso8601' --color=auto --format=' %(authordate:relative)%09%1B[0;33m%(refname:short)%1B[m' refs/remotes"

# all branches sorted by date with author
alias gband="git for-each-ref --sort='-authordate:iso8601' --format='%(authordate:relative)    %(align:25,left)%(color:green)%(authorname)%(end) %(color:reset)%(refname:short)' refs/heads; git for-each-ref --sort='-authordate:iso8601' --format='%(authordate:relative)    %(align:25,left)%(color:yellow)%(authorname)%(end) %(color:reset)%(refname:short)' refs/remotes"


alias gch="git checkout"
alias gcb="git checkout -b"

alias gd="git diff ':(exclude)package-lock.json'"
alias gdc="git diff --cached ':(exclude)package-lock.json'"

alias ga="git add"
alias gs="git status"
alias gco="git commit"
alias gcoa="git commit --amend"
alias gcm="git commit -m"
alias gpom="git push origin master"
alias gh="git-open"

alias gbdm="git branch --merged | egrep -v '(^\*|master|dev)' | xargs git branch -d"

alias gl="git log --all --oneline --graph --decorate --date=relative --pretty=format:'%C(bold blue)%h%C(reset)%C(auto)%d%C(reset) %<(50,trunc)%s%C(reset) %C(green)(%ar)%C(reset) %C(dim white)- %an%C(reset)'"
alias glg="git log --all --oneline --graph --decorate"

alias svl="svn log | perl -l40pe 's/^-+/\n/'"

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

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

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
# alias wget="curl -O"

alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)
