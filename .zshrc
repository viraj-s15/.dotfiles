# OPENSPEC:START
# OpenSpec shell completions configuration
fpath=("/home/veer/.oh-my-zsh/custom/completions" $fpath)
autoload -Uz compinit
compinit
# OPENSPEC:END

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"
typeset -U path
path=(
  "$HOME/bin"
  "$HOME/.local/bin"
  "$HOME/.cabal/bin"
  "$HOME/.local/share/nvim/mason/bin"
  "$HOME/.spicetify"
  "$BUN_INSTALL/bin"
  "$HOME/opt/rocm/bin"
  "/usr/local/bin"
  "$PATH"
  "/home/veer/.cargo/bin"
  "/usr/bin"            # Add this explicitly
  "/bin"                # Add this explicitly
  "/usr/local/sbin"
)

# Set other environment variables
export ZSH="$HOME/.oh-my-zsh"
export PIP_DEFAULT_TIMEOUT=100
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_STYLE_OVERRIDE=kvantum

# Bun
export BUN_INSTALL="$HOME/.bun"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Zsh completion system caching
autoload -U compinit

if [ -f ~/.zcompdump ]; then
  # Check if the dump file is older than a day
  if [[ "$(find ~/.zcompdump -mtime +9 -print)" ]]; then
    compinit
  else
    compinit -C
  fi
else
  compinit
fi

source $ZSH/oh-my-zsh.sh

# Example aliases
alias nv="neovide --neovim-bin ~/.local/bin/lvim --no-multigrid --maximized --frame none ."
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias vim='neovide-lunarvim .'
alias files="ranger"
alias docs="cd Documents"
alias down="cd Downloads"
alias cpp="cd Documents/'Main Cpp'"
alias c1="cd Documents/'Main C'"
alias v="nvim ."
alias zsh="nvim .zshrc"
alias lz='lazygit'
alias hdd='/run/media/veer/Work-Hdd'
alias hddo='sudo chown -R $USER /run/media/veer/613A1DEC519A152F/'
# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -a'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'
alias podman='sudo podman'
# alias vim='lvim'
alias h="helix"
alias pipi='pip install --no-cache-dir'
alias ollama='HSA_OVERRIDE_GFX_VERSION=10.3.0 ollama'

alias jb='jupyter lab'
#git
alias batstat='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias cd='z'
alias hddm='sudo mount /dev/sdb1 /mnt/ntfs1'

alias mailspring='mailspring --password-store="gnome-libsecret"'
# pacman
#pacman unlock
alias unlock='sudo rm /var/lib/pacman/db.lck'
alias gpgme="sudo rm -R /var/lib/pacman/sync"
alias hdd="cd /run/media/veer/613A1DEC519A152F"
#available free memory
alias free='free -mt'

alias kubectl='minikube kubectl --'

#continue download
alias wget='wget -c'

#readable output
alias df='df -h'

#userlist
alias userlist='cut -d: -f1 /etc/passwd'

alias pipijb='pip install notebook nbclassic jupyter-console'
alias julsp='pip install -U jedi-language-server'
alias mirrors="sudo reflector --verbose --country 'India' -l 100 --sort rate --save /etc/pacman.d/mirrorlist"
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
alias hx="helix"
alias jb='HSA_OVERRIDE_GFX_VERSION=10.3.0 jupyter lab --no-browser'

alias python='HSA_OVERRIDE_GFX_VERSION=10.3.0 python'
alias python3='HSA_OVERRIDE_GFX_VERSION=10.3.0 python3'

alias searxng='docker run --name searxng -d -p 32768:8080 -v "$(pwd)/searxng-config:/etc/searxng/" searxng/searxng:latest'

alias tssh='tailscale ssh root@100.75.161.26'

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

alias rmc="rm -rf .cache"

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


export BUN_INSTALL="$HOME/.bun"
export SEARXNG_URL="http://127.0.0.1:32768"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
# bun completions
[ -s "/home/veer/.bun/_bun" ] && source "/home/veer/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/home/veer/.spicetify

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Added by Antigravity CLI installer
export PATH="/home/veer/.local/bin:$PATH"
