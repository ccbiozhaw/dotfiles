# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=/Users/davidpatsch/opt/anaconda3/bin:$PATH
# export PATH=/Users/davidpatsch/lua-5.4.4/src:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias vim="nvim" 

tt () {
  ~/dotfiles/scripts/manage_tmux "$@"
}

plugins=(git zsh-autosuggestions vi-mode)

source $ZSH/oh-my-zsh.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/davidpatsch/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/davidpatsch/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/davidpatsch/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/davidpatsch/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

