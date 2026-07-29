# Enable emacs-mode in Zsh
bindkey -e

### ================================
### FAST STARTUP (Powerlevel10k)
### ================================
if [[ -n "$TMUX" ]]; then
  # Silence instant prompt completely inside tmux to stop layout glitches
elif [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### ================================
### THEME (Powerlevel10k)
### ================================
# Fixed: System-wide Arch p10k location
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

### ================================
### ALIASES
### ================================
alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"
alias python="python3"
alias tmux="tmux -u"
alias layout="toggle-keyboard-layout"

alias ls='ls --color=auto -F'
alias ll='ls -lA'
alias la='ls -A'

alias trashp='trash-put'
alias trashl='trash-list'

### ================================
### HISTORY 
### ================================
HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000

setopt share_history
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_verify
setopt inc_append_history

### ================================
### TAB COMPLETION
### ================================
autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' format '%F{cyan}%d%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' completer _extensions _complete _approximate

bindkey '^I' complete-word
bindkey '^[[Z' reverse-menu-complete

### ================================
### KEYBINDINGS (Fish-like Up/Down)
### ================================
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search

### ================================
### PLUGINS 
### ================================
# Fixed: Arch Zsh plugin locations
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### ================================
### FZF (Fuzzy everything)
### ================================
# Fixed: Arch FZF script locations
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Fixed: On Arch, fd-find binary is 'fd'
export FZF_DEFAULT_COMMAND="fd --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude .git"

export FZF_DEFAULT_OPTS="
--color=fg:#c0caf5,bg:#1a1b26,hl:#7aa2f7
--color=fg+:#c0caf5,bg+:#24283b,hl+:#7aa2f7
--color=info:#7dcfff,prompt:#7dcfff,pointer:#7dcfff
--preview 'bat --color=always {} 2>/dev/null || file {}'
--preview-window=right:60%:hidden
--bind '?:toggle-preview'
"

# 2. Custom Shortcut: Alt + U (Search HOME directory)
fzf-home-search-widget() {
  local selected=$(fd --hidden --exclude .git . $HOME | fzf +m)
  if [[ -n "$selected" ]]; then
    LBUFFER="${LBUFFER}${selected}"
  fi
  zle reset-prompt
}
zle -N fzf-home-search-widget
bindkey '^[u' fzf-home-search-widget

# 3. Custom Shortcut: Alt + Y (Search SYSTEM ROOT)
fzf-root-search-widget() {
  local selected=$(fd --hidden --exclude .git . / | fzf +m)
  if [[ -n "$selected" ]]; then
    LBUFFER="${LBUFFER}${selected}"
  fi
  zle reset-prompt
}
zle -N fzf-root-search-widget
bindkey '^[y' fzf-root-search-widget

### ================================
### ZOXIDE & YAZI
### ================================
eval "$(zoxide init zsh)"
alias c="z"

export EDITOR="nvim"

y() {
  local tmp="$(mktemp -t yazi-cwd.XXXXXX)"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat "$tmp")" && [ -n "$cwd" ]; then
    cd "$cwd"
  fi
  rm -f "$tmp"
}

### ================================
### ENVIRONMENT & PATHS
### ================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

export PATH=$PATH:$HOME/go/bin
export PATH="/home/pavan/.local/bin:$PATH"

[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

### ================================
### HOOKS
### ================================
function precmd() {
  echo -ne '\e[6 q'
}
