# macOS Intel MacBook Pro Setup Scripts 🚀

Comprehensive macOS setup scripts for Intel MacBook Pro with Sequoia. Transform your fresh Mac into a powerful development machine with modern tools, security-focused configurations, and the latest developer workflows.

## Quick Start

1. **Install Homebrew** (if not already installed):
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Clone this repository:**
   ```bash
   git clone https://github.com/felixtp/macos-setup-scripts.git
   cd macos-setup-scripts
   ```

3. **Make scripts executable:**
   ```bash
   chmod +x setup-mac.sh
   chmod +x optional-tools.sh
   ```

4. **Run the main setup:**
   ```bash
   ./setup-mac.sh
   ```

5. **Run optional tools (after main setup):**
   ```bash
   ./optional-tools.sh
   ```

## What Gets Installed

### Main Setup Script (`setup-mac.sh`)

#### Essential Command Line Tools
- **Git** - Version control
- **curl/wget** - Download utilities
- **tree** - Directory structure viewer
- **htop** - System monitor
- **jq** - JSON processor
- **fzf** - Fuzzy finder
- **ripgrep** - Better grep
- **bat** - Better cat with syntax highlighting
- **eza** - Modern ls replacement
- **neofetch** - System info with ASCII art
- **fortune/cowsay/lolcat** - Fun terminal messages

#### Programming Languages & Runtimes
- **Node.js** - JavaScript runtime
- **Python 3.12** - Latest Python
- **Go** - Google's programming language
- **Rust** - Systems programming language
- **nvm** - Node Version Manager
- **pyenv** - Python Version Manager

#### Essential GUI Applications
- **Google Chrome** - Web browser
- **Visual Studio Code** - Code editor (with popular extensions)
- **Rectangle** - Window management
- **Docker Desktop** - Containerisation
- **Postman** - API testing
- **Figma** - Design tool
- **The Unarchiver** - Archive utility

#### Developer QuickLook Plugins
- Syntax highlighting for code files
- Markdown preview
- JSON preview
- Image size display
- WebP support

#### Shell Enhancements
- **Oh My Zsh** - Zsh framework
- **Starship** - Modern shell prompt
- Useful aliases and shortcuts
- Git configuration

### Optional Tools Script (`optional-tools.sh`)

This script asks you about each tool before installing:

#### 🤖 AI-Powered Development
- **Cursor** - AI code editor (VSCode alternative)
- **GitHub Desktop** - Git GUI

#### ⚡ Productivity
- **Alfred** - Spotlight replacement
- **Raycast** - Modern Alfred alternative
- **Arc Browser** - Modern browser with workspaces

#### 🗄️ Database Tools
- **TablePlus** - Database GUI
- **MongoDB Compass** - MongoDB GUI

#### 🔒 Security
- **1Password** - Password manager
- **Bitwarden** - Open-source password manager
- **Little Snitch** - Network monitoring

#### 🛠️ System Utilities
- **CleanMyMac X** - System cleaner
- **Bartender 4** - Menu bar organisation
- **Stats** - System monitoring

#### 💻 Advanced Terminal
- **Warp Terminal** - AI-assisted terminal
- **tmux** - Terminal multiplexer

#### ☁️ Cloud & DevOps
- **AWS CLI** - Amazon Web Services
- **Google Cloud SDK** - Google Cloud
- **Terraform** - Infrastructure as code
- **kubectl** - Kubernetes CLI

#### ⚡ Power User CLI Tools
- **lazygit** - Git TUI
- **bottom** - System monitor
- **dust** - Disk usage analyser
- **zoxide** - Smart cd command

#### 🎨 Terminal Eye Candy
- **fastfetch** - Faster system info display
- **pipes.sh** - Animated pipes screensaver
- **cmatrix** - Matrix-style terminal rain
- **figlet/toilet** - ASCII art text generators

#### 🔤 Developer Fonts
- Fira Code
- JetBrains Mono
- Cascadia Code
- Source Code Pro

## 🔒 Security Considerations

**Security First Approach:**
All tools in these scripts have been carefully vetted for security:

✅ **Safe & Trusted:**
- All tools come from official developers via Homebrew's curated repository
- No tools with known security vulnerabilities or suspicious network activity
- Popular, well-maintained open-source projects with active communities
- Tools that follow macOS security guidelines and sandboxing

✅ **Security Enhancements Included:**
- **Little Snitch** - Network monitoring to see all app connections
- **1Password/Bitwarden** - Secure password management
- **Rectangle** - Open source window manager (no proprietary code)
- **The Unarchiver** - Safe archive handling with malware scanning

⚠️ **Security Notes:**
- Always review what each tool does before installing
- Some tools require admin privileges - this is normal for system tools
- VS Code extensions are from Microsoft's verified marketplace
- All GUI apps will request permissions properly through macOS

🛡️ **Post-Installation Security:**
1. Enable FileVault disk encryption
2. Set up two-factor authentication for all accounts
3. Configure Little Snitch rules for network monitoring
4. Use strong, unique passwords in your password manager
5. Keep all tools updated through `brew upgrade`

## 💰 Pricing Overview

**Main Setup Script - All FREE:**
✅ All essential tools in the main script are completely free

**Optional Tools Pricing:**
### FREE Tools:
- **Arc Browser, Discord, Warp Terminal** - Completely free
- **Raycast, Figma, Slack** - Free with optional paid features  
- **ImageOptim, Stats, VLC, DevToys** - Free and open source
- **MongoDB Compass** - Free from MongoDB
- **All CLI tools** - Free and open source

### One-Time Purchase:
- **Alfred Pro** - £29 (free version available)
- **TablePlus** - £59 (free trial available)
- **Bartender 4** - £15
- **Proxyman Pro** - £49 (free version available)
- **Little Snitch** - £45

### Subscription-Based:
- **1Password** - £2.99/month (family plans available)
- **CleanMyMac X** - £29.95/year
- **Zoom Pro** - £11.99/month (free version available)
- **Spotify Premium** - £9.99/month (free with ads available)

💡 **Money-Saving Tips:**
- Start with free versions and upgrade only if you need Pro features
- Many tools offer student discounts
- Look for bundle deals (especially for productivity apps)

## Prerequisites

- macOS Sequoia on Intel MacBook Pro
- Admin privileges on your Mac
- Homebrew installed (script will guide you if not installed)

## What Makes These Tools "Cool" in 2025?

### Essential Modern Replacements
- **eza** instead of `ls` - Better colours and Git integration
- **bat** instead of `cat` - Syntax highlighting and Git integration
- **ripgrep** instead of `grep` - Faster and more intuitive
- **fzf** - Interactive fuzzy finder that transforms your workflow

### AI-Powered Development
- **Cursor** - VS Code with built-in AI assistance
- **Warp Terminal** - Terminal with AI command suggestions
- **GitHub Copilot** - AI pair programming (included in VS Code extensions)

### Modern Productivity
- **Rectangle** - Simple, free window management
- **Raycast** - Extensible productivity tool
- **Arc Browser** - Workspaces and vertical tabs

### Developer Experience
- **Starship** - Beautiful, fast shell prompt
- **Oh My Zsh** - Powerful zsh configuration
- **TablePlus** - Beautiful database GUI for all major databases

## Post-Installation Steps

1. **Restart your terminal** or run:
   ```bash
   source ~/.zshrc
   ```

2. **Set up Git SSH keys** for GitHub:
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_ed25519
   ```

3. **Configure VS Code** with your preferred settings

4. **Set up Rectangle shortcuts** in System Preferences

5. **Install Node.js LTS** with nvm:
   ```bash
   nvm install --lts
   nvm use --lts
   ```

## Customisation

### Shell Aliases Added
```bash
alias ll='eza -la --git'
alias cat='bat'
alias grep='rg'
alias gs='git status'
alias code.='code .'

# Fun terminal aliases
alias matrix='cmatrix'
alias pipes='pipes.sh'
alias train='sl'
```

### Cool Terminal Features
The setup includes several fun terminal tools:
- **neofetch** - Shows system info with your macOS logo
- **fastfetch** - Faster alternative to neofetch  
- **fortune + cowsay + lolcat** - Random quotes in rainbow colours
- **cmatrix** - Matrix-style falling characters
- **pipes.sh** - Mesmerising animated pipes
- **figlet/toilet** - Create ASCII art from text

🔒 **Security Note:** All terminal tools are purely visual and offline - no network access or data collection.

You can uncomment one of the greeting options in `~/.zshrc` to show system info every time you open terminal!

### Git Configuration
The script will prompt you to set up:
- `git config --global user.name`
- `git config --global user.email`

## Troubleshooting

### If Homebrew commands fail:
```bash
brew doctor
brew update
```

### If VS Code extensions fail to install:
Open VS Code and install them manually from the Extensions marketplace.

### If shell configuration doesn't load:
```bash
source ~/.zshrc
# or restart your terminal
```

## What's Next?

After running these scripts, you'll have a modern, powerful development environment. Consider:

1. Setting up your preferred VS Code theme and settings
2. Configuring Rectangle window shortcuts
3. Exploring Alfred/Raycast workflows
4. Setting up cloud provider CLIs
5. Installing language-specific tools for your projects

## Contributing

Feel free to open issues or submit pull requests if you have suggestions for improvements or additional tools that should be included.

## License

This project is open source and available under the [MIT License](LICENSE).

## Need Help?

If you encounter any issues:
1. Check the terminal output for specific error messages
2. Run `brew doctor` to diagnose Homebrew issues
3. Ensure you have admin privileges on your Mac
4. Some GUI apps might need manual approval in System Preferences > Security & Privacy

Happy coding! 🎉
