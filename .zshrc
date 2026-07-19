# Created by C-3PO for 5.9

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# alias
alias kittyfile="lvim ~/.config/kitty/kitty.conf"
alias zshfile="lvim ~/.zshrc"
alias updateAll="sudo dnf upgrade --refresh -y && flatpak update -y"
alias lz="eza --icons --group-directories-first -a --sort=name"
alias treez="eza -T --icons " # -L 1, 2, 3, etc. 
alias ps="procs"
alias hdb="histdb"
alias clear="printf '\033[2J\033[3J\033[1;1H'"

# Export PATH
export PATH=/home/c3po/.local/bin:/home/c3po/.cargo/bin:$PATH

# save
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY          
setopt SHARE_HISTORY           
setopt HIST_IGNORE_DUPS        
setopt HIST_IGNORE_SPACE       

# zsh-histdb
if [ -f /usr/share/zsh/plugins/zsh-histdb/zsh-histdb.plugin.zsh ]; then
    source /usr/share/zsh/plugins/zsh-histdb/zsh-histdb.plugin.zsh
elif [ -f ~/.zsh/zsh-histdb/zsh-histdb.plugin.zsh ]; then
    source ~/.zsh/zsh-histdb/zsh-histdb.plugin.zsh
fi

# zsh-autosuggestions
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Prioridade para os shims do ASDF
export PATH="$HOME/.asdf/shims:$PATH"
. ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh
export PATH="<path>:$PATH"
export PATH=$PATH:/home/c3po/.spicetify
alias sklauncher='java -jar ~/.local/share/sklauncher/sklauncher.jar'
