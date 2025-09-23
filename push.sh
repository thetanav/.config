#!/bin/bash
# quickpush.sh - Add, commit, and push to GitHub

# If no commit message given, use a default
if [ -z "$1" ]; then
  COMMIT_MSG="update: $(date '+%Y-%m-%d')"
else
  COMMIT_MSG="$*"
fi

# Run git commands
git add ghostty zed nvim tmux wofi zed zsh htop push.sh
git commit -m "$COMMIT_MSG"
git push
