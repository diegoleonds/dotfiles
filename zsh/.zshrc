#My configs
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export MANPAGER='nvim +Man!'

export VISUAL=nvim
export EDITOR=nvim

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias reset-bluetooth='sh ~/scripts/reset-bluetooth.sh'

#Android
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin

#Flutter
export PATH="$HOME/dev/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

#Tmux
export PATH="$HOME/.tmuxifier/bin:$PATH"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
setopt NO_BEEP
ENABLE_CORRECTION="true"
plugins=(git)

export SDKMAN_DIR="$HOME/.sdkman"

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(tmuxifier init -)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

source ~/.zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
