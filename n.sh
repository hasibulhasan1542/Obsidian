#!/bin/zsh
cd $(pwd)

### Removing all unwanted dotfiles except the .git and the .obsidian ###

find . -name ".*" \
  ! -name "." ! -name ".." \
  ! -path "*/.git" ! -path "*/.git/*" \
  ! -path "*/.obsidian" ! -path "*/.obsidian/*" \
  -exec rm -rf {} +

### Pushing into repo ###

git add .
git commit -m "Initial commit"
git push