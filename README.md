# dotfiles
macOS dotfiles configuration for development environment setup

## Contents

This repository contains configuration files for:
- **Zsh**: Shell configuration with custom prompt and Git integration
- **Git**: Git configuration with useful aliases and color schemes
- **Vim**: Basic vim configuration for comfortable text editing
- **Shell Aliases**: Common command shortcuts for productivity

## Installation

1. Clone this repository:
```bash
git clone https://github.com/romiafan/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Run the installation script:
```bash
./install.sh
```

The script will:
- Backup existing dotfiles to `~/.dotfiles_backup_<timestamp>`
- Create symlinks from your home directory to the dotfiles in this repository
- Preserve your existing configurations

3. Update your Git configuration:
```bash
# Edit ~/.gitconfig and update your name and email
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

4. Restart your terminal or source the configuration:
```bash
source ~/.zshrc
```

## What's Included

### `.zshrc`
- Custom prompt with Git branch display
- Command history configuration
- Path setup for Homebrew (Intel and Apple Silicon)
- Command completion enabled

### `.zsh_aliases`
- Navigation shortcuts (`..`, `...`, `....`)
- Git aliases (`gs`, `ga`, `gc`, `gp`, etc.)
- Directory listing shortcuts
- macOS-specific utilities

### `.gitconfig`
- Colorized Git output
- Useful Git aliases
- Default branch set to `main`
- Global gitignore setup

### `.gitignore_global`
- macOS system files (`.DS_Store`, etc.)
- IDE configuration files
- Common development artifacts

### `.vimrc`
- Syntax highlighting enabled
- Line numbers and visual aids
- Smart indentation
- Search improvements

## Customization

Feel free to customize any of the dotfiles to suit your preferences:

1. Edit the files in the repository
2. Changes will be reflected in your home directory through symlinks
3. No need to run the install script again after making changes

## Uninstallation

To remove the dotfiles:

```bash
# Remove symlinks
rm ~/.zshrc ~/.zsh_aliases ~/.vimrc ~/.gitconfig ~/.gitignore_global

# Restore from backup if needed
# (backup location is shown during installation)
```

## Requirements

- macOS (tested on recent versions)
- Zsh (default shell on modern macOS)
- Git

## Optional Enhancements

Consider installing these tools for an enhanced development environment:
- [Homebrew](https://brew.sh/) - Package manager for macOS
- [Oh My Zsh](https://ohmyz.sh/) - Zsh framework with plugins and themes
- [iTerm2](https://iterm2.com/) - Advanced terminal emulator

## License

Feel free to use and modify these dotfiles for your own setup.
