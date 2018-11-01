# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="robbyrussell"

export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=13
export ENABLE_CORRECTION="true"
export COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh
source "$ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

plugins=(
  git
  kubectl
  helm
  last-working-dir
  zsh-syntax-highlighting
  colored-man-pages
  battery
)


# User configuration
if which vim >/dev/null 2>&1 ; then 
    export EDITOR='vim'
else
    echo 'Could not set editor. Vim is not installed.' >&2
fi

# Docker autocomplition
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export SSH_KEY_PATH="~/.ssh/rsa_id"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/local/lib"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
