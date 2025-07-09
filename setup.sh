#!/bin/bash

# 1. Create Binary Directory
mkdir -p ~/bin

# 2. Move the Script and Rename to `git-remote`
mv git_automation/git-remote.sh ~/bin/git-remote

# 3. Make Script Executable
chmod +x ~/bin/git-remote

# 4. Update PATH
if [[ $SHELL == *"bash"* ]]; then
  echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
  SHELL_RC=~/.bashrc
elif [[ $SHELL == *"zsh"* ]]; then
  echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
  SHELL_RC=~/.zshrc
else
  echo "Unsupported shell. Please manually update your PATH."
  exit 1
fi

# 5. Reload Shell Configuration
source $SHELL_RC

# 6. Ask for GitHub credentials
read -p "Enter your GitHub username: " github_user
read -s -p "Enter your GitHub token: " github_token
echo ""

# 7. Save Environment Variables
echo "export GITHUB_USERNAME=\"$github_user\"" >> ~/.envvars
echo "export GITHUB_TOKEN=\"$github_token\"" >> ~/.envvars

# 8. Load Environment Variables
source ~/.envvars

echo "Setup complete. You can now use 'git-remote' from anywhere in the terminal."
