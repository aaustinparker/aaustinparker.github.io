
# housekeeping
sudo chmod -R 777 /workspaces/website
sudo chown -R vscode /workspaces/website
sudo apt update && sudo apt upgrade
git config --global core.autocrlf true

# installation
gem install jekyll
bundle

# aliases
echo "alias serve='bundle exec jekyll serve'" > ~/.bash_aliases
source ~/.bash_aliases