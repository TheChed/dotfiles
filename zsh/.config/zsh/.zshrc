# -------------------------------- Path configurtation --------------------------


setopt extended_glob null_glob

path=(
    $path
    $HOME/.local/bin
    $HOME/.config/scripts
)

#Remove duplicate entries and non-existent directories
typeset -U path
path=($^path(N-/))

export PATH

export LD_LIBRARY_PATH="/lib:/usr/lib:/usr/local/lib"

#------------------------------- Environment variables---------------------------

#set -o vi

# Default Apps
export EDITOR="nvim"
export BROWSER="firefox"
export READER="mupdf"
export VISUAL="nvim"
export TERMINAL="ghostty"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"

#Paths
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export ZINIT_HOME="/usr/share/zinit"


#Other configs
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

#--------------------------------- History -----------------------------

export HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE    #dont save when prefixed with space
setopt HIST_IGNORE_DUPS     # dont save duplicatge lines
setopt HIST_IGNORE_ALL_DUPS     # dont save duplicatge lines
setopt HIST_SAVE_NO_DUPS    
setopt HIST_FIND_NO_DUPS    
setopt SHARE_HISTORY        # Share history between sessions
setopt APPENDHISTORY

bindkey '^R' history-incremental-pattern-search-backward    # Enable searching through history

 # --------------------------------PROMPT ------------------------------
    
# Spaceship Prompt
#autoload -U promptinit; promptinit
#prompt spaceship

#Oh my Posh Prompt
eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/ohmyposh/config.toml)"


# ------------------------------- Aliases -------------------------------

alias v='nvim'
alias cathay='cd /home/stephan/NAS/DATA/stephan/FM/Cathay/2022-2023'
alias cdps='cd /home/stephan/Documents/C/src/PSXMSFS'
alias cdnz='cd /home/stephan/Documents/C/src/NZBIDX' 
alias cdf='cd /home/stephan/LOCALDATA/frost/downloads'
alias ls='exa --icons -g --group-directories-first'
#alias la='exa --icons -a --group-directories-first'
alias la='/usr/bin/ls --color=auto -lathr'


# ------------------------------- Sourcing ------------------------------

source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# -------------------------------Completion------------------------------

fpath+=~/.zfunc


autoload -Uz compinit
compinit -u

zstyle ':completion:*' menu select
