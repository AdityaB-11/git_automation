# Git First Push Automation  
This guide will help you set up automated git operations using a custom script. Follow these steps to install and configure the git automation tool.

## Prerequisites

- Git installed on your system
- A GitHub account with a personal access token
- Bash or Zsh shell

## Installation Steps

### 1. Clone the Repository

```bash
git clone www.github.com/AdityaB-11/git_automation.git

cd git-automation
```

### 2.Give Permissions to setup file

 

```bash
chmod +x setup.sh
```

### 3. Run  the Setup

Move the git automation script to your binary directory:

```bash
./setup.sh
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
