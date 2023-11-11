# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH=/usr/share/oh-my-zsh/

# ZSH_THEME="half-life"
# ZSH_THEME="intheloop"
# ZSH_THEME="itchy"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
PATH=$HOME/.cabal/bin:$PATH
export PATH=/home/veer/.local/bin:$PATH
export PATH="$HOME/.local/share/nvim/mason/bin/:$PATH"
# export PATH = "$HOME/zellij"

export PATH=$PATH:/opt/rocm/bin
#Display gif
export PATH=$PATH:/home/veer/.spicetify

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

PATH=$PATH:~/opt/rocm/bin/
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/oh-my-zsh.sh

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
# alias vim='neovide-lunarvim .'
alias docs="cd Documents"
alias down="cd Downloads"
alias cpp="cd Documents/'Main Cpp'"
alias c1="cd Documents/'Main C'"
alias v="lvim ."
alias vzsh="lvim .zshrc"
alias lz='lazygit'
alias hdd='cd "/run/media/veer/TOSHIBA EXT"'
# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -a'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'
# alias vim='lvim'
alias pipi='pip install --no-cache-dir'
alias jb='jupyter lab'
#git
alias batstat='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
# pacman 
#pacman unlock
alias unlock='sudo rm /var/lib/pacman/db.lck'
alias gpgme="sudo rm -R /var/lib/pacman/sync"
alias hdd="cd /run/media/veer/613A1DEC519A152F"
#available free memory
alias free='free -mt'

#continue download
alias wget='wget -c'

#readable output
alias df='df -h'

#userlist
alias userlist='cut -d: -f1 /etc/passwd'

alias pipijb='pip install notebook nbclassic jupyter-console'
alias julsp='pip install -U jedi-language-server'
alias mirrors="sudo reflector --verbose --country 'India' -l 15 --sort rate --save /etc/pacman.d/mirrorlist"
#Pacman for software managment
alias upall='topgrade'
alias search='pacman -Qs'
alias remove='sudo pacman -R'
alias install='sudo pacman -S'
alias linstall='sudo pacman -U '
alias update='sudo pacman -Syu'
alias clrcache='sudo pacman -Scc'
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias akring='sudo pacman -Sy archlinux-keyring --noconfirm'
alias packerror='grep -i installed /var/log/pacman.log | grep "warning"'

alias jb='HSA_OVERRIDE_GFX_VERSION=10.3.0 jupyter lab --no-browser'

alias python='HSA_OVERRIDE_GFX_VERSION=10.3.0 python'
alias python3='HSA_OVERRIDE_GFX_VERSION=10.3.0 python3'


# alias v='neovide --neovim-bin "/home/veer/.local/bin/lvim" .'
# Paru/Yay stuff
alias pget='paru -S '
alias yget='yay -S '
alias yrem='yay -R '
alias prem='paru -R '

#Flatpak Update
alias fpup='flatpak update'

#skip integrity check
alias paruskip='paru -S --mflags --skipinteg'
alias yayskip='yay -S --mflags --skipinteg'

#grub update
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'

#hardware info --short
alias hw='hwinfo --short'

#GiT  command
alias gc='git clone '
alias gitcm="git commit -m"
alias gita="git add ."
alias gitpo="git push origin"

#cd/ aliases
alias home='cd ~'
alias etc='cd /etc/'
alias music='cd ~/Music'
alias vids='cd ~/Videos'
alias conf='cd ~/.config'
alias desk='cd ~/Desktop'
alias pics='cd ~/Pictures'
alias dldz='cd ~/Downloads'
alias docs='cd ~/Documents'
alias sapps='cd /usr/share/applications'
alias lapps='cd ~/.local/share/applications'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#Display specs
#neofetch

#Display Pokemon
# pokemon-colorscripts --no-title -r 1,3,6


# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/veer/google-cloud-sdk/path.zsh.inc' ]; then . '/home/veer/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/veer/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/veer/google-cloud-sdk/completion.zsh.inc'; fi
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.inshellisense/key-bindings.zsh ] && source ~/.inshellisense/key-bindings.zsh
