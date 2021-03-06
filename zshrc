export ZSH="/home/sreedeep/.oh-my-zsh"
fpath+=("$HOME/.zsh/pure")
ZSH_THEME=""

plugins=(
	git
	docker
	zsh-syntax-highlighting
  z
)


source $ZSH/oh-my-zsh.sh

# .zshrc
autoload -U promptinit; promptinit
prompt pure


export EDITOR='vim'

PATH="$HOME/.node/bin:$PATH"
NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"
# export PATH="$PATH:/opt/lampp/bin:/opt/lampp"
#source virtualenvwrapper.sh
eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/scripts/bin:$PATH"
export PATH="$PATH:$HOME/workspace/scripts"
export PATH="$PATH:$HOME/workspace/go/bin"
export GOPATH=~/workspace/go
alias zshrc="vim ~/.zshrc;source ~/.zshrc"
alias please=sudo
alias c="xclip -selection clipboard"
alias v="nvim"
alias pS="sudo pacman -S"
alias pSu="sudo pacman -Syu"
alias pSs="pacman -Ss"
alias sctl="sudo systemctl"
alias k=kubectl
alias la="exa -lah"
alias o="xdg-open"

alias fixroot="XDG_RUNTIME_DIR=/run/user/$UID systemctl --user reset-failed"


read -r last_backup_date  < ~/workspace/backups/last_backup_date
current_date=$(date -u +"%Y-%m-%d")
[[ "$last_backup_date" =~ $current_date.* ]] || echo "Last backup was done on $last_backup_date"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

