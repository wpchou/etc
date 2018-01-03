export ZSH=$HOME/dev/share/oh-my-zsh
ZSH_THEME="sunrise"
ZSH_CUSTOM=$HOME/etc/zsh/oh-my-zsh
plugins=(
    autojump
    brew
    cask
    command-not-found
    common-aliases
    compleat
    colored-man-pages
    colorize
    cp
    docker
    extract
    git
    gnu_utils
    nix
    node
    npm
    nvm
    osx
    pip
    python
    stack
    sudo
    systemd
    tmux
    web-search
    yarn
)
source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
USER_BIN_PATH="/usr/local/bin:/usr/sbin"
SYSTEM_BIN_PATH="/usr/bin:/usr/sbin:/bin:/sbin"
export PATH="$USER_BIN_PATH:$SYSTEM_BIN_PATH"
if [ "$USER" != root -o ! -w /nix/var/nix/db ]; then
    export NIX_REMOTE=daemon
fi
export NIX_USER_PROFILE_DIR="/nix/var/nix/profiles/per-user/$USER"
export NIX_PROFILES="/nix/var/nix/profiles/default $HOME/.nix-profile"
export NIX_SSL_CERT_FILE="/nix/var/nix/profiles/default/etc/ssl/certs/ca-bundle.crt"
export NIX_PATH="/nix/var/nix/profiles/per-user/root/channels"
export PATH="$HOME/.nix-profile/bin:$HOME/.nix-profile/sbin:$HOME/.nix-profile/lib/kde4/libexec:/nix/var/nix/profiles/default/bin:/nix/var/nix/profiles/default/sbin:/nix/var/nix/profiles/default/lib/kde4/libexec:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

export LANG=zh_CN.UTF-8