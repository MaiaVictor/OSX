defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# ag search and replace
function agr { ag -0 -l "$1" | xargs -0 perl -pi.bak -e "s/$1/$2/g"; }
export -f agr

alias vim='/Applications/MacVim.app/Contents/bin/mvim -v'
alias vifm='vifm .'

alias vic="cd ~/vic"
alias dev="cd ~/vic/dev"
alias doc="cd ~/vic/doc"
alias lab="cd ~/vic/lab"
alias old="cd ~/vic/old"
alias pic="cd ~/vic/pic"
alias ppl="cd ~/vic/ppl"
alias sci="cd ~/vic/sci"
alias aud="cd ~/vic/aud"
alias osx="cd ~/vic/osx"
alias vid="cd ~/vic/vid"
alias moo="cd ~/vic/dev/moonad"
alias fmy="cd ~/vic/dev/formality"
alias sys="cd ~/vic/dev/moonad/sys"
alias lib="cd ~/vic/dev/moonad/lib"
alias uwu="cd ~/vic/uwu"

function base() {
  scp fpm:~/formality-package-manager/fm/Base#$1.fm .
  scp Base#$1.fm fpm:~/formality-package-manager/fm/Base#.fm
}

export LSCOLORS=ExFxBxDxCxegedabagacad
#export PS1='λ '
export PS1='[\w]\[\033[00m\] '
export CLICOLOR=1

alias ls='ls -GFhla'
alias tree='tree -I node_modules'
alias c='clear'
alias ic='imgcat'
alias ag='ag --ignore "*min.js" --ignore "*node_modules*"'

export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export BASH_SILENCE_DEPRECATION_WARNING=1

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# GHC
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
