# Set up the prompt
PROMPT='%n in %~ -> '
PROMPT='%F{208}%n%f in %F{226}%~%f -> '
# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%} on %{$fg_bold[yellow]%}\xee\x82\xa0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$reset_color%}%{$fg_bold[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function ll () {
    ls -l "$@" 
}

function ide () {
     /usr/local/idea/bin/idea.sh "$@"&
}

bindkey -v

export JAVA_HOME=/usr/local/java-17/
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/usr/local/maven/bin/:$PATH

