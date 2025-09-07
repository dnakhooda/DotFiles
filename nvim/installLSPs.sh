#!/usr/bin/env bash

lsps=(
    "lua-language-server"
    "typescript-language-server"
    "pyright"
    "clang"
)

for lsp in "${lsps[@]}"; do
    if command -v "$lsp" >/dev/null 2>&1; then
        echo "$lsp is already installed"
    else
        sudo pacman -S --noconfirm "$lsp"
    fi
done

echo "Done..."
