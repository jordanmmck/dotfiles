#!/bin/bash

set -e

DOTFILES_DIR="$HOME/Development/dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"

FILES_TO_SYMLINK=(
  zshrc
  zprofile
  tmux.conf
  gitconfig
  gitignore_global
)

echo "🔧 Installing dotfiles from $DOTFILES_DIR"
mkdir -p "$BACKUP_DIR"

for file in "${FILES_TO_SYMLINK[@]}"; do
  target="$HOME/.$file"
  source="$DOTFILES_DIR/$file"

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "📦 Backing up existing $target to $BACKUP_DIR"
    mv "$target" "$BACKUP_DIR/"
  fi

  echo "🔗 Linking $target -> $source"
  ln -sf "$source" "$target"
done

# VSCode settings (optional)
# if [ -d "$DOTFILES_DIR/vscode" ]; then
#   VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
#   mkdir -p "$VSCODE_USER_DIR"
#   ln -sf "$DOTFILES_DIR/vscode/settings.json" "$VSCODE_USER_DIR/settings.json"
#   ln -sf "$DOTFILES_DIR/vscode/keybindings.json" "$VSCODE_USER_DIR/keybindings.json"
#   echo "💻 VSCode settings linked"
# fi

echo "✅ Done. Your dotfiles are now in place."