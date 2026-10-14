# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/dotfiles/bin:/usr/local/bin:$PATH

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/dotfiles/zsh/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Make nvim easier to start.
alias vi=nvim

# Use most as my PAGER if it is installed.
if command -v most > /dev/null 2>&1; then
  export PAGER="most"
fi

# Use my ls variant
alias ll="ls -lAh"

# git aliases
alias gst="git status"
alias gaa="git add --all"
alias gb="git branch"
alias gbd="git branch --delete"
alias gbD="git branch --delete --force"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcm="git checkout main"
alias gcmm="git checkout master"
alias gcmsg="git commit --message"
alias gf="git fetch"
alias ggl="git pull origin \"$(current_branch)\""
alias ggp="git push origin \"$(current_branch)\""

fastfetch

eval "$(starship init zsh)"
