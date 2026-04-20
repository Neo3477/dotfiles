# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set Nvim to default Editor
export EDITOR=nvim

# Set bat Theme
export BAT_THEME="Catppuccin Mocha"

# Set Eza config Path
export EZA_CONFIG_DIR="${HOME}/.config/eza"

# Go Path
export GOPATH=$(go env GOPATH)
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

source <(fzf --zsh)

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

# fzf-tab must be loaded after compinit (which oh-my-zsh calls internally)
source ~/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.plugin.zsh

# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always --icons=always --group-directories-first "$realpath"'

#source <(fzf --zsh)

# Aliases
alias ls="eza --icons=always --git --no-user --group-directories-first"
alias yz="yazi"
alias fk="fuck"
alias dl="cd ~/Downloads"
alias dk="cd ~/Documents"
alias df="cd ~/dotfiles"
alias cf="cd ~/.config"
alias szsh="source ~/.zshrc"
alias ff="fastfetch -c ~/.config/fastfetch/config1.jsonc"
alias time="tty-clock -C4 -c -f %A-%d-%B-%Y"
alias fe='fzf_find_edit'
alias tm="tmux"
alias nv="nvim"
alias x="exit"
alias lg="Lazygit"

eval $(thefuck --alias)
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "/Users/marcogaebel/.bun/_bun" ] && source "/Users/marcogaebel/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias claude-mem='/Users/marcogaebel/.bun/bin/bun "/Users/marcogaebel/.claude/plugins/cache/thedotmack/claude-mem/12.1.6/scripts/worker-service.cjs"'
