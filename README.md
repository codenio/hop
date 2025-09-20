# 🦘 Hop - Project Directory Navigator

A simple and efficient bash utility that helps you quickly navigate, list, and open your project directories using `fzf` (fuzzy finder).

## ✨ Features

- **Quick Navigation**: Jump to any project directory with fuzzy search
- **Directory Listing**: View contents of your projects base directory  
- **Editor Integration**: Open projects directly in VS Code or Cursor
- **Interactive Selection**: Uses `fzf` for smooth, interactive directory selection
- **Multiple Options**: Flexible command-line flags for different workflows

## 📋 Prerequisites

- **bash** shell
- **[fzf](https://github.com/junegunn/fzf)** - Command-line fuzzy finder
- **VS Code** or **Cursor** (optional, for editor integration)

### Installing fzf

```bash
# macOS (using Homebrew)
brew install fzf

# Ubuntu/Debian
sudo apt install fzf

# Arch Linux  
sudo pacman -S fzf

# Or install via git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## 🚀 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/hop.git
   cd hop
   ```

2. **Source the script in your shell configuration:**
   ```bash
   # Add to your ~/.bashrc, ~/.zshrc, or ~/.bash_profile
   echo "source $(pwd)/hop.sh" >> ~/.bashrc
   
   # Reload your shell configuration
   source ~/.bashrc
   ```

   Or manually add this line to your shell config file:
   ```bash
   source /path/to/hop/hop.sh
   ```

## 📖 Usage

The `hop` function accepts a base directory as the first argument and various options as the second argument.

### Basic Syntax
```bash
hop <base_directory> [options]
```

### Available Options

| Option | Long Form | Description |
|--------|-----------|-------------|
| `-l` | `--list` | List contents of the base directory |
| `-c` | `--cd` | Navigate to a selected project directory |
| `-o` | `--open` | Open a selected project in your preferred editor |
| (none) | | Change to the base directory |

### Examples

```bash
# Navigate to your projects directory
hop ~/projects

# List all projects in the directory
hop ~/projects -l
hop ~/projects --list

# Interactively select and navigate to a project
hop ~/projects -c
hop ~/projects --cd

# Interactively select a project and open it in VS Code or Cursor
hop ~/projects -o
hop ~/projects --open
```

### Typical Workflow

1. **Set up an alias** for your main projects directory:
   ```bash
   # Add to your shell config
   alias projects="hop ~/Documents/projects"
   ```

2. **Quick navigation:**
   ```bash
   projects -c    # Select and navigate to a project
   projects -o    # Select and open a project in your editor
   projects -l    # List all projects
   ```

## 🛠️ How It Works

- **Directory Navigation**: Uses `cd` to change to selected directories
- **Fuzzy Selection**: Leverages `fzf` with a clean 50% height, reverse layout
- **Editor Support**: Automatically detects and supports VS Code (`code`) and Cursor (`cursor`) editors
- **Flexible Options**: Supports both short (`-c`) and long (`--cd`) option formats

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch:**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes and commit:**
   ```bash
   git commit -m "Add amazing feature"
   ```
4. **Push to the branch:**
   ```bash
   git push origin feature/amazing-feature
   ```
5. **Open a Pull Request**

## 📝 Ideas for Enhancement

- Add support for more editors (vim, emacs, etc.)
- Include subdirectory navigation
- Add project templates or initialization
- Implement project bookmarking
- Add configuration file support

## 📚 Related

- **Blog Post**: [Bash FZF Hop](https://codenio.hashnode.dev/bash-fzf-hop) - Learn more about the motivation and usage
- **[fzf](https://github.com/junegunn/fzf)** - The powerful fuzzy finder that makes this possible

## 📄 License

This project is open source. Feel free to use, modify, and distribute as needed.

---

**Happy hopping! 🦘**
