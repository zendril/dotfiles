#function _update_ps1() {
#    PS1="$($GOPATH/bin/powerline-go -error $?)"
#}


function _update_ps1() {
    PS1="$(powerline-go \
                -error $? \
                -cwd-max-depth 4 \
                -truncate-segment-width 24 \
                -shell bash \
                -modules host,cwd,perms,git,exit,root \
                -priority root,cwd,perms,git-branch,git-status,user,exit,host \
                -max-width 90
                )"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

alias ll="ls -altr --color"
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export GOBIN=$GOPATH/bin
GO111MODULE=auto
#export GOROOT=/snap/bin
#export PATH=$PATH:$GOROOT/bin
alias h3=/usr/local/bin/tmp/helm
