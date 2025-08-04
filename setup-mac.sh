#!/bin/bash

# macOS Setup Script for Intel MacBook Pro 2019
# Sequoia Setup - Transform your Mac into a powerful development machine
# Run with: chmod +x setup-mac.sh && ./setup-mac.sh

set -e  # Exit on any error

echo "🚀 Starting macOS Intel MacBook Pro Setup..."
echo "📅 $(date)"
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    print_error "This script is designed for macOS only!"
    exit 1
fi

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    print_error "Homebrew is not installed. Please install it first:"
    echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    exit 1
fi

print_success "Homebrew is installed!"

# Update Homebrew
print_status "Updating Homebrew..."
brew update

# Install essential command line tools
print_status "Installing essential command line tools..."
brew install git          # Version control system - essential for development
brew install curl         # Command line tool for transferring data with URLs
brew install wget         # Network downloader - alternative to curl
brew install tree         # Display directory structure in tree format
brew install htop         # Interactive process viewer - better than top
brew install jq           # JSON processor - parse and manipulate JSON data
brew install fzf          # Fuzzy finder - interactive file/command search
brew install ripgrep      # Fast text search tool - grep alternative
brew install bat          # Cat clone with syntax highlighting and git integration
brew install eza          # Modern ls replacement with colours and git status
brew install mas          # Mac App Store command line interface
brew install neofetch     # System information display with ASCII art
brew install fortune      # Random quote generator - harmless fun
brew install cowsay       # ASCII cow that displays messages - terminal fun
brew install lolcat       # Rainbow text colouriser - visual enhancement only

# Install programming languages and runtimes
print_status "Installing programming languages and runtimes..."
brew install node         # JavaScript runtime - for web development
brew install python@3.12  # Latest Python version - scripting and development
brew install go           # Google's programming language - fast compilation
brew install rust         # Systems programming language - memory safe

# Install version managers
print_status "Installing version managers..."
brew install nvm          # Node Version Manager - safely manage multiple Node.js versions
brew install pyenv        # Python Version Manager - safely manage multiple Python versions

# Install essential GUI applications
print_status "Installing essential GUI applications..."
brew install --cask google-chrome      # Trusted web browser - secure browsing
brew install --cask visual-studio-code # Microsoft's code editor - widely trusted
brew install --cask rectangle          # Window management - open source, secure
brew install --cask the-unarchiver     # Archive utility - handles zip/rar safely
brew install --cask appcleaner         # App uninstaller - removes leftover files securely

# Install developer tools
print_status "Installing developer tools..."
brew install --cask docker         # Containerisation - isolated development environments
brew install --cask postman        # API testing - secure API development and testing
brew install --cask figma          # Design tool - collaborative design platform

# Install QuickLook plugins for developers
print_status "Installing QuickLook plugins..."
brew install --cask qlcolorcode    # Syntax highlighting in Finder previews - safe file viewing
brew install --cask qlmarkdown     # Markdown preview in Finder - document viewing
brew install --cask quicklook-json # JSON preview in Finder - data structure viewing
brew install --cask qlimagesize    # Image dimensions in Finder - media file info
brew install --cask webpquicklook  # WebP support in Finder - modern image format

# Configure Git (if not already configured)
print_status "Checking Git configuration..."
if ! git config --global user.name &> /dev/null; then
    echo "Git user.name not set. Please enter your name:"
    read -r git_name
    git config --global user.name "$git_name"
fi

if ! git config --global user.email &> /dev/null; then
    echo "Git user.email not set. Please enter your email:"
    read -r git_email
    git config --global user.email "$git_email"
fi

# Install Oh My Zsh
print_status "Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    print_success "Oh My Zsh installed!"
else
    print_warning "Oh My Zsh already installed"
fi

# Install Starship prompt
print_status "Installing Starship prompt..."
brew install starship

# Set up fzf key bindings
print_status "Setting up fzf key bindings..."
$(brew --prefix)/opt/fzf/install --all

# Create useful aliases
print_status "Setting up useful shell aliases..."
cat >> ~/.zshrc << 'EOF'

# Custom aliases for productivity
alias ll='eza -la --git'
alias la='eza -la'
alias lt='eza --tree'
alias cat='bat'
alias grep='rg'
alias top='htop'
alias python='python3'
alias pip='pip3'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph'

# Development shortcuts
alias code.='code .'
alias chrome='open -a "Google Chrome"'

# System shortcuts
alias reload='source ~/.zshrc'
alias editrc='code ~/.zshrc'

# Node.js version management
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Python version management
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Starship prompt
eval "$(starship init zsh)"

# Cool terminal greeting (uncomment the one you prefer)
# neofetch  # System info with ASCII art
# fastfetch # Faster alternative to neofetch
# fortune | cowsay | lolcat  # Random quote from ASCII cow in rainbow colours

# Fun aliases for terminal eye candy - all safe, offline visual tools
alias matrix='cmatrix'
alias pipes='pipes.sh'
alias train='sl'
EOF

print_success "Shell configuration updated!"

# Install VS Code extensions
print_status "Installing popular VS Code extensions..."
code --install-extension ms-python.python
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension bradlc.vscode-tailwindcss
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-json
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.vscode-eslint

print_success "Essential setup complete!"

echo ""
echo "🎉 Basic setup is complete! Here's what was installed:"
echo ""
echo "Essential Tools:"
echo "  ✓ Git, curl, wget, tree, htop"
echo "  ✓ Modern CLI tools: fzf, ripgrep, bat, eza"
echo "  ✓ Programming languages: Node.js, Python, Go, Rust"
echo "  ✓ Version managers: nvm, pyenv"
echo ""
echo "GUI Applications:"
echo "  ✓ Google Chrome"
echo "  ✓ Visual Studio Code (with extensions)"
echo "  ✓ Rectangle (window management)"
echo "  ✓ Docker Desktop"
echo "  ✓ Postman"
echo "  ✓ Figma"
echo ""
echo "Shell Enhancements:"
echo "  ✓ Oh My Zsh"
echo "  ✓ Starship prompt"
echo "  ✓ Useful aliases and functions"
echo ""

echo "🔄 Please restart your terminal or run 'source ~/.zshrc' to load new settings"
echo ""
echo "📝 Optional tools to consider (run optional-tools.sh):"
echo "  - Cursor (AI-powered code editor)"
echo "  - Alfred/Raycast (productivity)"
echo "  - TablePlus (database GUI)"
echo "  - 1Password (password manager)"
echo "  - Slack/Discord (communication)"
echo ""
