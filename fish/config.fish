export GOPATH='/Users/ullaakut/Work/go'
export KUBECONFIG='/Users/ullaakut/.kube/config'

set PATH $PATH $GOPATH/bin/

export TRAEFIKEE_LICENSE_KEY="98fbf5bd-e74f-47fa-bcce-15053f8223d1"

alias remoteDocker 'export DOCKER_HOST='tcp://ullaakut.eu:2376' ; and export DOCKER_CERT_PATH="/Users/ullaakut/remote_docker_host/"'
alias localDocker 'unset DOCKER_CERT_PATH; and unset DOCKER_HOST; and unset DOCKER_TLS_VERIFY'

# Colorized outputs
alias ls 'grc ls -laF'
alias diff 'grc diff'
alias docker 'grc docker'
alias gcc 'grc gcc'
alias go 'grc go'
alias ifconfig 'grc ifconfig'
alias netstat 'grc netstat'
alias ping 'grc ping'
alias ps 'grc ps'
alias nmap 'grc nmap'
# alias kubectl 'grc -c conf.kubectl kubectl'
alias cat 'bat --theme "Monokai Extended Origin"'

alias code '/usr/local/bin/goland'

alias h 'history'
alias j 'jobs -l'
alias w 'cd /Users/ullaakut/Work'

# Docker compose
alias dcps 'docker-compose ps'
alias dcl 'docker-compose logs -f'
alias dcup 'docker-compose up -d'
alias dcstop 'docker-compose stop'
alias dcrm 'docker-compose rm'
alias dcexec 'docker-compose exec'
alias dcb 'docker-compose build'
alias dcrestart 'docker-compose restart'
alias dcpause 'docker-compose pause'

# Git stuff
alias gc 'git commit -S -m'
alias gs 'git status'
alias ga 'git add'
alias gps 'git push'
alias glog 'git log --color --graph --oneline --decorate'
alias gdif 'git diff'
alias openbranch 'open https://github.com/containous/traefikee/compare/master...Ullaakut:(git branch | grep \* | cut -d \' \' -f2)'

# TraefikEE
alias savebin 'cp /Users/ullaakut/Work/go/src/github.com/containous/traefikee/dist/traefikee/traefikee /usr/local/bin/traefikee ; and cp /Users/ullaakut/Work/go/src/github.com/containous/traefikee/dist/traefikeectl/traefikeectl /usr/local/bin/traefikeectl'
alias teectl 'traefikeectl'

# Audio notifications
alias success 'say -v "Anna" "Prozess isten terminatet zucksesfully"'
alias failure 'say -v "Anna" "Redden alert, kritikal error heinst been detected"'

# Logbook
function lb --description "Open my logbook of the day"
    if not test -e ~/logbook/(date '+%Y-%m-%d').md
        echo '# Logbook' > ~/logbook/(date '+%Y-%m-%d').md
    end
    code ~/logbook/(date '+%Y-%m-%d').md
end

function go --description "go wrapper for colorizing the output"
  /usr/local/bin/go $argv | sed ''/PASS/s//(printf "\033[32mPASS\033[0m")/'' | sed ''/FAIL/s//(printf "\033[31mFAIL\033[0m")/''
end

function cd --description 'cd to real path when following a symlink'
    builtin cd (realpath $argv)
end

# Make wget continue unfinished downloads
alias wget 'wget -c'

set fish_greeting ""
set PATH $PATH /usr/local/opt/curl/bin
set PATH $PATH /usr/local/bin
set PATH $PATH /usr/sbin
set PATH $PATH /usr/bin
set PATH $PATH /sbin
set PATH $PATH /bin
set -g default_user ullaakut
