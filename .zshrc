# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to Java home
export JAVA_HOME=`/usr/libexec/java_home -v 17`

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
alias xps='ssh nafisk@192.168.1.212'

# neovim alias
alias vim='nvim'

# video downlaoder
alias yt='yt-dlp'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
