# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/apeterson/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast docker)

source $ZSH/oh-my-zsh.sh

# User configuration
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
autoload -U colors; colors
source /Users/apeterson/git/github.com/zsh-kubectl-prompt
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#Powerlevel9K Settings
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time history status dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\n"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="❯\e[1C"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="❯\e[1C"

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='red'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_BACKGROUND='red'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='red'

POWERLEVEL9K_TIME_FOREGROUND='cyan'
POWERLEVEL9K_TIME_BACKGROUND='blue'

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_FAIL_ICON="\uf00D"
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_OK_FOREGROUND='cyan'
POWERLEVEL9K_STATUS_OK_BACKGROUND='blue'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='blue'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='cyan'

POWERLEVEL9K_STATUS_ERROR_FOREGROUND='blue'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='cyan'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#git push origin
alias gpo="git push origin"
#go programming path
export GOPATH=/Users/apeterson/go

export PATH=$GOPATH/bin:$PATH
#python homebrew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

#Ansible Vault
export ANSIBLE_VAULT_IDENTITY_LIST=~/.secrets/vault

# Make sure to put the vault password file in ~/.secrets/vault on your system and set its permissions to 0400
alias acmdci="ansible --become --vault-password-file='~/.secrets/vault' -i"
# # Git pull CfgMgt & Roles
alias gititall="git pull && cd playbooks/roles && git pull && cd -"
alias gclose="git branch -D"

eval $(thefuck --alias)
