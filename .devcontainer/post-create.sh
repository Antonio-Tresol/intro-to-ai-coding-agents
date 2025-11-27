#!/bin/bash
set -e

echo "🔧 Setting up development environment..."

# Install uv and ruff
echo "📦 Installing uv and ruff..."
pip install uv
uv tool install ruff

# Configure git with beginner-friendly defaults
echo "🔀 Configuring git..."
git config --global pull.rebase false
git config --global init.defaultBranch main
git config --global push.autoSetupRemote true
git config --global fetch.prune true
git config --global diff.colorMoved zebra
git config --global core.autocrlf input
git config --global core.editor "code --wait"

# Install starship prompt (shows git branch, python version, etc.)
echo "🚀 Installing starship prompt..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

# Configure shell
echo "🐚 Configuring shell..."
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Set UV_LINK_MODE globally for devcontainer filesystem compatibility
echo 'export UV_LINK_MODE=copy' >> ~/.bashrc

# Add helpful aliases for beginners
echo '' >> ~/.bashrc
echo '# Python/uv aliases' >> ~/.bashrc
echo 'alias py="uv run python"' >> ~/.bashrc
echo 'alias ipy="uv run ipython"' >> ~/.bashrc
echo 'alias add="uv add"' >> ~/.bashrc
echo 'alias remove="uv remove"' >> ~/.bashrc
echo 'alias sync="uv sync"' >> ~/.bashrc
echo 'alias test="uv run pytest"' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '# Git aliases' >> ~/.bashrc
echo 'alias gs="git status"' >> ~/.bashrc
echo 'alias ga="git add"' >> ~/.bashrc
echo 'alias gc="git commit -m"' >> ~/.bashrc
echo 'alias gp="git push"' >> ~/.bashrc
echo 'alias gl="git pull"' >> ~/.bashrc
echo 'alias gd="git diff"' >> ~/.bashrc
echo 'alias glog="git log --oneline --graph --decorate -10"' >> ~/.bashrc

# Sync project dependencies
echo "📦 Syncing project dependencies with uv..."
export UV_LINK_MODE=copy
uv sync

# Source bashrc to make aliases available immediately
source ~/.bashrc 2>/dev/null || true

echo ""
echo "✅ Development environment ready!"
echo ""
echo "📝 Quick reference:"
echo "   py script.py    - Run Python script with uv"
echo "   add <package>   - Add a dependency"
echo "   sync           - Install all dependencies"
echo "   gs             - Git status"
echo "   gc 'message'   - Git commit"
echo ""
