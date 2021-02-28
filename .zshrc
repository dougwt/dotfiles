# ~.zshrc

################################################################
# Path
################################################################

# Add Homebrew's executables to the front of PATH
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

################################################################
# Aliases
################################################################

# Use `dotfiles` alias to manage dotfiles git repo
alias dotfiles='/usr/local/bin/git --git-dir=/Users/dougwt/.dotfiles/ --work-tree=/Users/dougwt'

# Use `update` alias to update AppStore, Homebrew, Ruby, and NPM apps
alias update='echo "Installing Apple software updates..."; sudo softwareupdate -i -a; \
echo "Installing Homebrew updates..."; brew update; brew upgrade; brew cleanup;'
# echo "Installing Ruby updates..."; sudo gem update --system; sudo gem update; \
# echo "Installing NPM updates..."; sudo npm update -g'

# Aliases for quickly moving up directory hierarchies
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

################################################################
# Prompt
################################################################

# Load Starship prompt (https://starship.rs)
eval "$(starship init zsh)"

################################################################
# ZSH Configuration
################################################################

# Enable ZSH auto correction
ENABLE_CORRECTION="true"

# Load additional auto completion definitions for ZSH
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi