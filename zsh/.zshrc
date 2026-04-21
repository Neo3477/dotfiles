# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set Nvim to default Editor
export EDITOR=nvim

# Set bat Theme
export BAT_THEME="Catppuccin Mocha"

# Set Eza config Path
export EZA_CONFIG_DIR="${HOME}/.config/eza"

# Go Path
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source <(fzf --zsh)

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4"

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
# zsh-syntax-highlighting MUST be last
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# History (after OMZ so these values win)
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# completion colors (set before fzf-tab so it picks them up)
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# fzf-tab must be loaded after compinit (which oh-my-zsh calls internally)
source ~/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.plugin.zsh

# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always --icons=always --group-directories-first "$realpath"'
zstyle ':fzf-tab:*' use-fzf-default-opts yes

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
alias clock="tty-clock -C4 -c -f %A-%d-%B-%Y"
alias fe='fzf_find_edit'
alias tm="tmux"
alias nv="nvim"
alias x="exit"
alias lg="lazygit"

eval $(thefuck --alias)
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/Users/marcogaebel/.bun/_bun" ] && source "/Users/marcogaebel/.bun/_bun"

alias claude-mem='/Users/marcogaebel/.bun/bin/bun "/Users/marcogaebel/.claude/plugins/cache/thedotmack/claude-mem/12.1.6/scripts/worker-service.cjs"'
