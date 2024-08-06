# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Which plugins would you like to load?
plugins=(
  git
  zsh-autosuggestions
  zsh-completions
  colored-man-pages
  command-not-found
  extract
  themes
  zsh-syntax-highlighting
)

# for zsh-completions plygin
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# JAVA
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Alacritty Terminal Binds - Enable natural text editing
#
# Move to the beginning of the line. `Cmd + Left Arrow`:
bindkey "^[[1;9D" beginning-of-line
# Move to the end of the line. `Cmd + Right Arrow`:
bindkey "^[[1;9C" end-of-line
# Move to the beginning of the previous word. `Option + Left Arrow`:
bindkey "^[[1;3D" backward-word
# Move to the beginning of the next word. `Option + Right Arrow`:
bindkey "^[[1;3C" forward-word
# Delete the word behind the cursor. `Option + Delete`:
bindkey "^[[3;10~" backward-kill-word
# Delete the word after the cursor. `Option + fn + Delete`:
bindkey "^[[3;3~" kill-word

# ---- Eza (better ls) -----
alias ls="eza --icons=always --no-permissions"



### 🔴 MAIN ALIASES 🔴 ###

# python aliases
alias python3=/Library/Frameworks/Python.framework/Versions/3.11/bin/python3.11
alias python=/Library/Frameworks/Python.framework/Versions/3.11/bin/python3.11
alias p3=/Library/Frameworks/Python.framework/Versions/3.11/bin/python3.11
alias pip='pip3'

# git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gac='git add . && git commit -m'

# cli aliases
alias cl='clear'
alias cdp='cd ~/Desktop/Projects/'
alias jn='jupyter notebook'
alias jl='jupyterlab'

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# home server
alias xps='ssh nafisk@192.168.1.181'
alias pc='ssh nafisk@192.168.1.226'

# terminal editor alias
alias nv='nvim'
alias nvh='bat /Users/nafiskhan/.vim/vim_shortcuts.md'
alias nvimh='bat /Users/nafiskhan/.vim/vim_shortcuts.md'
alias tm='tmux'
alias tmh='bat /Users/nafiskhan/.tmux/tmux_shortcuts.md'

# video downlaoder
alias yt='yt-dlp'
alias gl='gallery-dl'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# use Apple M chip GPU to convert Video Media
alias convert='ffmpeg -i "$1" -c:v h264_videotoolbox -c:a aac "$2"'


