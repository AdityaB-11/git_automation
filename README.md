# Git Automation Setup

This guide will help you set up automated git operations using a custom script. Follow these steps to install and configure the git automation tool.

## Prerequisites

- Git installed on your system
- A GitHub account with a personal access token
- Bash or Zsh shell

## Installation Steps

### 1. Clone the Repository

```bash
git clone www.github.com/AdityaB-11/git_automation.git
```

### 2. Create Binary Directory

Create a directory for your custom executables:

```bash
mkdir -p ~/bin
```

### 3. Move the Script

Move the git automation script to your binary directory:

```bash
mv git_automation/git-remote.sh ~/bin/
```

### 4. Make Script Executable

Give the script execution permissions:

```bash
chmod +x ~/bin/git-remote.sh
```

### 5. Update PATH

Add the binary directory to your PATH by adding this line to your shell configuration file:

**For Bash users (~/.bashrc):**
```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

**For Zsh users (~/.zshrc):**
```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
```

### 6. Reload Shell Configuration

Reload your shell configuration:

```bash
source ~/.bashrc  # for Bash users
# or
source ~/.zshrc   # for Zsh users
```

### 7. Set Up Environment Variables

Create environment variables for your GitHub credentials:

```bash
echo "export GITHUB_USERNAME=yourusername
export GITHUB_TOKEN=ghp_XXXXXXXXXXXXXXXXXXXXXXX" >> ~/.envvars
```

**Important:** Replace `yourusername` with your actual GitHub username and `ghp_XXXXXXXXXXXXXXXXXXXXXXX` with your actual GitHub personal access token.

### 8. Load Environment Variables

Source the environment variables:

```bash
source ~/.envvars
```

## GitHub Personal Access Token Setup

To get your GitHub personal access token:

1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Click "Generate new token"
3. Select appropriate scopes (typically `repo` for repository access)
4. Copy the generated token and use it in step 7

## Usage

Once everything is set up, you can use the automation tool in any project folder:

```bash
cd your-project-directory
git-remote
```

## Troubleshooting

- **Command not found:** Make sure you've added `~/bin` to your PATH and reloaded your shell configuration
- **Permission denied:** Ensure the script has executable permissions with `chmod +x ~/bin/git-remote.sh`
- **GitHub authentication issues:** Verify your GitHub username and token are correctly set in `~/.envvars`

## Security Notes

- Keep your GitHub token secure and never share it publicly
- Consider using a token with minimal required permissions
- The `.envvars` file contains sensitive information - ensure it's not tracked by git

## Making Changes Persistent

To ensure your environment variables are loaded every time you start a new shell session, add this line to your shell configuration file:

```bash
echo 'source ~/.envvars' >> ~/.bashrc  # for Bash
# or
echo 'source ~/.envvars' >> ~/.zshrc   # for Zsh
```

Then reload your shell configuration once more.

---

You're now ready to use the git automation tool! Navigate to any project directory and run `git-remote` to use the automated git operatio
