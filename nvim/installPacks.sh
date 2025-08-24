#!/usr/bin/env bash

PACK_DIR="$HOME/.config/nvim/pack/nvim/start"
mkdir -p "$PACK_DIR"

plugins=(
  "https://github.com/catppuccin/nvim v1.11.0 catppuccin"
  "https://github.com/nvim-lua/plenary.nvim v0.1.4 plenary.nvim"
  "https://github.com/mbbill/undotree rel_6.1 undotree"
  "https://github.com/neovim/nvim-lspconfig v2.4.0 nvim-lspconfig"
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim main telescope-fzf-native.nvim"
  "https://github.com/tpope/vim-fugitive v3.7 vim-fugitive"
  "https://github.com/nvim-treesitter/nvim-treesitter v0.10.0 nvim-treesitter"
  "https://github.com/nvim-telescope/telescope.nvim 0.1.8 telescope.nvim"
)

for plugin in "${plugins[@]}"; do
  set -- $plugin
  url=$1
  branch=$2
  folder=$3

  if [ ! -d "$PACK_DIR/$folder" ]; then
    echo "Cloning $folder (branch/tag: $branch)..."
    git clone --branch "$branch" "$url" "$PACK_DIR/$folder"
  else
    echo "$folder already exists, skipping"
  fi
done

echo "Done..."
