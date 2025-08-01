#!/bin/bash

# Optional Cool Tools for macOS Intel MacBook Pro
# These are trendy tools that developers love in 2025
# Run after the main setup script
# 🔒 SECURITY NOTE: All tools listed have been reviewed for security considerations

set -e

echo "🔒 SECURITY NOTICE: This script only installs vetted, secure tools from trusted sources."
echo "All applications come from official developers via Homebrew's curated repository."
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

echo "🔥 Installing Optional Cool Tools for Developers (2025 Edition)"
echo ""

# Function to ask user if they want to install something
ask_install() {
    local tool_name="$1"
    local description="$2"
    echo -e "${YELLOW}Install $tool_name?${NC} - $description"
    read -p "Install? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        return 0
    else
        return 1
    fi
}

# AI-Powered Development Tools
echo "🤖 AI-Powered Development Tools:"

if ask_install "Cursor" "AI-powered code editor (VSCode alternative with built-in AI) - from Anysphere, trusted by developers"; then
    brew install --cask cursor
    print_success "Cursor installed!"
fi

if ask_install "GitHub Desktop" "Git GUI with excellent GitHub integration - official GitHub app, completely secure"; then
    brew install --cask github-desktop
    print_success "GitHub Desktop installed!"
fi

# Productivity Powerhouses
echo ""
echo "⚡ Productivity Tools:"

if ask_install "Alfred" "Powerful spotlight replacement with workflows - FREE (Pro version £29 one-time)"; then
    brew install --cask alfred
    print_success "Alfred installed!"
fi

if ask_install "Raycast" "Modern alternative to Alfred with extensions - FREE with Pro features available"; then
    brew install --cask raycast
    print_success "Raycast installed!"
fi

if ask_install "Arc Browser" "Modern browser with workspaces and AI features - FREE"; then
    brew install --cask arc
    print_success "Arc Browser installed!"
fi

# Developer Database Tools
echo ""
echo "🗄️  Database Tools:"

if ask_install "TablePlus" "Modern database GUI for multiple databases - FREE trial, then £59 one-time"; then
    brew install --cask tableplus
    print_success "TablePlus installed!"
fi

if ask_install "MongoDB Compass" "GUI for MongoDB - FREE from MongoDB Inc."; then
    brew install --cask mongodb-compass
    print_success "MongoDB Compass installed!"
fi

# Design & Creative Tools
echo ""
echo "🎨 Design Tools:"

if ask_install "Figma Desktop" "Design and prototyping tool - FREE with paid team features"; then
    brew install --cask figma
    print_success "Figma installed!"
fi

if ask_install "ImageOptim" "Image compression tool - FREE and open source"; then
    brew install --cask imageoptim
    print_success "ImageOptim installed!"
fi

# Communication & Collaboration
echo ""
echo "💬 Communication Tools:"

if ask_install "Slack" "Team communication - FREE with paid premium features"; then
    brew install --cask slack
    print_success "Slack installed!"
fi

if ask_install "Discord" "Gaming and developer community chat - FREE"; then
    brew install --cask discord
    print_success "Discord installed!"
fi

if ask_install "Zoom" "Video conferencing - FREE basic, Pro £11.99/month"; then
    brew install --cask zoom
    print_success "Zoom installed!"
fi

# Security & Privacy
echo ""
echo "🔒 Security Tools:"

if ask_install "1Password" "Password manager - industry-leading security, zero-knowledge architecture"; then
    brew install --cask 1password
    print_success "1Password installed!"
fi

if ask_install "Bitwarden" "Open-source password manager - audited security, self-hostable option"; then
    brew install --cask bitwarden
    print_success "Bitwarden installed!"
fi

if ask_install "Little Snitch" "Network monitor - shows all network connections, prevents unauthorised access"; then
    brew install --cask little-snitch
    print_success "Little Snitch installed!"
fi

# System Utilities
echo ""
echo "🛠️  System Utilities:"

if ask_install "CleanMyMac X" "System cleaner and optimiser - £29.95/year subscription"; then
    brew install --cask cleanmymac
    print_success "CleanMyMac X installed!"
fi

if ask_install "Bartender 4" "Menu bar organisation - £15 one-time purchase"; then
    brew install --cask bartender-4
    print_success "Bartender 4 installed!"
fi

if ask_install "Stats" "System monitoring in menu bar - FREE and open source"; then
    brew install --cask stats
    print_success "Stats installed!"
fi

# Terminal Emulators & Tools
echo ""
echo "💻 Advanced Terminal Tools:"

if ask_install "Warp Terminal" "Modern terminal with AI assistance - FREE"; then
    brew install --cask warp
    print_success "Warp Terminal installed!"
fi

if ask_install "tmux" "Terminal multiplexer - FREE and open source"; then
    brew install tmux
    print_success "tmux installed!"
fi

# Advanced Development Tools
echo ""
echo "🚀 Advanced Development Tools:"

if ask_install "Insomnia" "API testing tool (Postman alternative) - FREE with paid Pro features"; then
    brew install --cask insomnia
    print_success "Insomnia installed!"
fi

if ask_install "DevToys" "Developer utilities in one app - FREE"; then
    brew install --cask devtoys
    print_success "DevToys installed!"
fi

if ask_install "Proxyman" "HTTP debugging proxy - FREE basic, Pro £49 one-time"; then
    brew install --cask proxyman
    print_success "Proxyman installed!"
fi

# Cloud & DevOps Tools
echo ""
echo "☁️  Cloud & DevOps:"

if ask_install "AWS CLI" "Amazon Web Services command line"; then
    brew install awscli
    print_success "AWS CLI installed!"
fi

if ask_install "Google Cloud SDK" "Google Cloud command line tools"; then
    brew install --cask google-cloud-sdk
    print_success "Google Cloud SDK installed!"
fi

if ask_install "Terraform" "Infrastructure as code"; then
    brew install terraform
    print_success "Terraform installed!"
fi

if ask_install "Kubernetes CLI (kubectl)" "Kubernetes command line"; then
    brew install kubectl
    print_success "kubectl installed!"
fi

# Entertainment & Media
echo ""
echo "🎵 Entertainment:"

if ask_install "Spotify" "Music streaming - FREE with ads, Premium £9.99/month"; then
    brew install --cask spotify
    print_success "Spotify installed!"
fi

if ask_install "VLC" "Media player - FREE and open source"; then
    brew install --cask vlc
    print_success "VLC installed!"
fi

# Additional CLI Tools for Power Users
echo ""
echo "⚡ Power User CLI Tools:"

if ask_install "Advanced CLI tools" "lazygit, bottom, dust, fd, sd, and more"; then
    brew install lazygit      # Git TUI
    brew install bottom       # System monitor
    brew install dust         # Disk usage analyser
    brew install fd           # Find alternative
    brew install sd           # Sed alternative
    brew install zoxide       # Smart cd
    brew install starship     # Cross-shell prompt
    brew install tokei        # Code statistics
    print_success "Advanced CLI tools installed!"
fi

# Cool Terminal ASCII & System Info Tools
echo ""
echo "🎨 Cool Terminal ASCII & System Info Tools:"

if ask_install "ASCII Art & System Info" "fastfetch, pipes.sh, cmatrix, figlet - all safe terminal visual tools, no network access"; then
    brew install fastfetch    # Faster neofetch alternative - system info display only
    brew install pipes-sh     # Animated pipes screensaver - pure visual, no data access
    brew install cmatrix      # Matrix-style rain - visual terminal effect only
    brew install figlet       # ASCII art text generator - offline text formatting
    brew install toilet       # More ASCII art text - offline text styling
    brew install sl           # Steam locomotive easter egg - harmless fun command
    # Note: Removed asciiquarium due to potential network dependencies
    print_success "ASCII art and system info tools installed!"
fi

# Font installations
echo ""
echo "🔤 Developer Fonts:"

if ask_install "Developer Fonts" "Fira Code, JetBrains Mono, and other programming fonts"; then
    brew tap homebrew/cask-fonts
    brew install --cask font-fira-code
    brew install --cask font-jetbrains-mono
    brew install --cask font-cascadia-code
    brew install --cask font-source-code-pro
    print_success "Developer fonts installed!"
fi

echo ""
echo "🎉 Optional tools installation complete!"
echo ""
echo "💡 Pro Tips:"
echo "  • Configure Rectangle with your preferred window shortcuts"
echo "  • Set up Alfred/Raycast workflows for maximum productivity"
echo "  • Install VS Code extensions for your specific languages"
echo "  • Configure Starship prompt with your preferred theme"
echo "  • Set up SSH keys for GitHub if you haven't already"
echo ""
echo "🔧 Additional setup you might want to do manually:"
echo "  • Configure Docker Desktop settings"
echo "  • Set up cloud provider CLIs (AWS, GCP, Azure)"
echo "  • Install language-specific tools (React Native CLI, Flutter, etc.)"
echo "  • Set up your preferred terminal theme"
echo ""
