# Basic Stuff
PATH=$PATH:$HOME/.scripts
export EDITOR='nvim'
export PATH=~/.local/bin:$PATH #PTSH
export PATH=~/.config/composer/vendor/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export TERM="xterm-256color"
export PATH="$HOME/.ampl:$PATH"
export GEM_HOME="$HOME/.gem"
alias zrc="$EDITOR $HOME/.config/zsh/.zshrc"

# OCaml
[[ ! -r /home/augustofgui/.opam/opam-init/init.zsh ]] || source /home/augustofgui/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.cache/zsh/history

# Binds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Insensitive Autocompletion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/augustofgui/.config/zsh/.zshrc'

autoload -Uz compinit
compinit

source "$HOME/.config/zsh/spaceship/spaceship.zsh"

source /home/augustofgui/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/augustofgui/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
