#kinit
# if /opt/cisco/anyconnect/bin/vpn status | grep 'state: Connected' && ! klist -s; then kinit -f -l 2592000; fi

# PATH stuff
export NVM_DIR="$HOME/.nvm"
 [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
 [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH=$HOME/bin:$HOME/.npm/bin:$HOME/.npm-global/lib/node_modules:$HOME/.toolbox/bin:/apollo/env/NodeJS/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home
export PATH="/usr/local/sbin:$PATH"

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# aliases
alias mlp="cd ~/workplace/MLPigeon/src/MLPigeonWebsite"
alias umlc="cd ~/workplace/MachineLearningCatalogWebsite/src/MachineLearningCatalogWebsite"
alias stem="cd ~/Dev/swstem-website"
alias leetcode="cd ~/Dev/practice/leetcode"

alias vim="nvim"
alias vimdiff="nvim -d"
alias grep="ggrep -P" # Perl compatible regex
alias odin-dev-desk-tunnel="ssh -f -N -L 2009:localhost:2009 copexrob-clouddesk.aka.corp.amazon.com"
alias confign="nvim ~/Dev/dev-env/config/nvim/init.lua"
alias configz="nvim ~/.zshrc"

# bindkeys
bindkey -s '^F' 'nvim $(fzf)\n'

# autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#444444" 
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# completions
fpath=($HOME/.local/share/zsh/completions $fpath) 
autoload compinit
compinit -i

# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rbenv
# eval "$(~/.rbenv/bin/rbenv init - zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/copexrob/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/copexrob/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/copexrob/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/copexrob/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# aws autocomplete
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

# starship prompt
eval "$(starship init zsh)"

# better cp, make any required dirs
#mkcp() {
#  mkdir -p "$2"
#  cp -r "$1" "$2"
#}

# syntax highlighting - has to be the last plugin
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

