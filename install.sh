#!/bin/bash

# dotfilesのパスを取得
DOTFILES_DIR="$HOME/dotfiles"

# シンボリックリンク作成関数
link_file() {
  local src=$1
  local dest=$2

  if [ -e "$dest" ] || [ -L "$dest" ]; then
    echo "⚠️  $dest already exists. Skipping."
  else
    ln -s "$src" "$dest"
    echo "✅ Linked $dest -> $src"
  fi
}

# .zshrcのリンク
link_file "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"

# .vimrcのリンク
link_file "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"

