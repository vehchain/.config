export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom"

plugins=( 
    git
    archlinux
)

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt share_history
setopt hist_ignore_all_dups

alias n='nvim'
alias t='tmux'
alias ta='tmux attach'
alias tk='tmux kill-server'
alias tl='tmux ls'
alias gc='git clone '
alias ga='git add .'
alias gcm='git commit -m '
alias gp='git push -u origin main'
alias gs='git status'
alias cd..='cd ..'
alias ll='ls -Alh --color=never'
alias la='ls -Alh --color=never'
alias ls='lsd --group-dirs first'
alias s='yay -Ss '
alias i='yay -S '
alias u='yay -Syu '
alias gpp='g++ -o o'
alias py='python3'
alias y='yazi'
alias lg='lazygit'
alias dev='cd ~/Downloads/things/programming'
