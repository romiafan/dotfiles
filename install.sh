#!/bin/bash

# Dotfiles installation script for macOS

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get the directory where this script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "${GREEN}Installing dotfiles from ${DOTFILES_DIR}${NC}"

# Backup existing dotfiles
backup_dir="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

# Function to create symlink
create_symlink() {
    local source="$1"
    local target="$2"

    if [ -e "$target" ] || [ -L "$target" ]; then
        echo -e "${YELLOW}Backing up existing $target${NC}"
        mv "$target" "$backup_dir/"
    fi

    echo -e "${GREEN}Creating symlink: $target -> $source${NC}"
    ln -s "$source" "$target"
}

# Install dotfiles
echo -e "\n${GREEN}Creating symlinks...${NC}"

create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/.zsh_aliases" "$HOME/.zsh_aliases"
create_symlink "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
create_symlink "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/.gitignore_global" "$HOME/.gitignore_global"

echo -e "\n${GREEN}✓ Dotfiles installation complete!${NC}"
echo -e "${YELLOW}Note: Please update .gitconfig with your name and email${NC}"
echo -e "${YELLOW}Backup of old dotfiles saved to: ${backup_dir}${NC}"

# Source the new zsh configuration if running in zsh
if [ -n "$ZSH_VERSION" ]; then
    echo -e "\n${GREEN}Reloading zsh configuration...${NC}"
    source "$HOME/.zshrc"
fi

echo -e "\n${GREEN}Done! Please restart your terminal or run 'source ~/.zshrc' to apply changes.${NC}"
