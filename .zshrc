# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set Nvim to default Editor
export EDITOR=nvim

# Set bat Theme
export BAT_THEME="Catppuccin Macchiato"

# FZF Styling Options
fzf_find_edit() {
    local file=$(
        fzf \
            --query="$1" \
            --height=50% \
            --border=rounded \
            --color=gutter:#24273a,border:#91d7e3,separator:#f5a97f,label:#aeaeae \
            --info=right \
            --header='CTRL-c or ESC to quit' \
            --no-multi \
            --select-1 \
            --exit-0 \
            --margin="3%,2%,5%,2%" \
            --preview 'bat --color=always --style=full --line-range :500 {}'
    )
    
    if [[ -n "$file" ]]; then
        nvim "$file"
    fi
}

# aktive Plugins
plugins=(
	git 
	zsh-autosuggestions 
	zsh-syntax-highlighting 
	zsh-interactive-cd 
	thefuck
)

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

# Aliases
alias ls="eza --icons=always"
alias zj="zellij"
alias yz="yazi"
alias fk="fuck"
alias dl="cd ~/Downloads"
alias dk="cd ~/Documents"
alias zef="zellij edit -f"
alias ze="zellij edit"
alias zr="zellij run --floating --close-on-exit --"
alias szsh="source ~/.zshrc"
alias ff="fastfetch -c ~/.config/fastfetch/config1.jsonc"
alias time="tty-clock -C4 -c -x -f %A-%d-%B-%Y"
alias fe='fzf_find_edit'
alias tm="tmux"
alias nv="nvim"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


eval $(thefuck --alias)
eval "$(starship init zsh)"
