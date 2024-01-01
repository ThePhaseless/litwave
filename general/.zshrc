export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="refined"
zstyle ':omz:update' mode auto # update automatically without asking

plugins=(
    docker
    docker-compose
    command-not-found
    compleat
    cp
    extract
    gh
    vscode
    ubuntu
    timer
    last-working-dir
    screen
    safe-paste
)

COMPLETION_WAITING_DOTS=true

source $ZSH/oh-my-zsh.sh
