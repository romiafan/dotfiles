# ~/.zshrc - ZSH configuration

# Path configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/opt/homebrew/bin:$PATH"  # For Apple Silicon Macs

# Editor configuration
export EDITOR='vim'
export VISUAL='vim'

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Enable command completion
autoload -Uz compinit
compinit

# Prompt configuration
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Aliases
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# Homebrew configuration
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
