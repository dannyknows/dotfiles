eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export RUBYOPT='-W:no-deprecated -W:no-experimental'

# tmux settings
alias tmux="TERM=screen-256color-bce tmux"
alias tmuxc='vim ~/.tmux.conf'

# Navigation
alias ..='cd ..'                                                                
alias cd..='cd ..'                                                              
alias la='ls -A'                                                                
alias ll='ls -lA'                                                               
alias rm='rm -i'                                                                
alias cv='cv -i'                                                                
alias ln='ln -i'                                                                
alias mkdir='mkdir -p'                                                          
alias kp='kill -9'                                                              
alias vimrc='vim ~/.vimrc'                                                                                  
alias zshrc='vim ~/.zshrc'
alias ys='yarn start'

# Git                                                                           
alias gs='git status'
alias ga='git add'                                                           
alias gd='git diff'                                                             
alias gc='git commit -m'                                                        
alias gca='git commit --amend' 
alias gp='git push'                                                 
alias gpu='git pull'
                                                                                  
# Rails                                                                         
alias rs='rails server'
alias rc='rails console'                                                        
                                                                                  
# Python
alias py='python'
alias jp='jupyter notebook'

# Directories                                                                   
alias fun='cd ~/fun'
alias dev='cd ~/dev'                                                            
alias desktop="cd ~/Desktop"

# File shortcuts                                                                
alias vimrc='vim ~/.vimrc'                                                      
alias bashrc='vim ~/.bashrc'                                                    
alias bashalias='vim ~/.bash_aliases'                                           
alias bashload='source ~/.bashrc'                                               
                                                                                  
# Script shortcuts                                                                     
# Launch browser at local host port                                             
lh () {                                                                         
  open -a 'firefox developer edition' http://localhost:$1                                     
}                                                                               
                                                                                  
# Make directory and cd                                                         
mcd () {                                                                        
  mkdir -p $1                                                                 
  cd $1                                                                       
}                 

# Python env config
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Default Oh-My-Zsh settings

export ZSH="/Users/danny/.oh-my-zsh"

ZSH_THEME="danny_knows"

plugins=(rails osx)

source $ZSH/oh-my-zsh.sh

# Note worthy themes
#    trapd00r
#    fino
#    gianu
#    af-magic
#    random - cycles through installed themes

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
