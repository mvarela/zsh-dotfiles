# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mvr"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...



function do_linux_aliases {
alias l='ls -lah --color'
alias ls='ls --color'
alias x='emacsclient.emacs24 -t -aemacs24'
export EDITOR='emacsclient.emacs24 -t -aemacs24'
export VISUAL='emacsclient.emacs24 -t -aemacs24'
}
function do_mac_aliases {
alias l='gls -lah --color'
alias ls='gls --color'
alias cp='/usr/local/bin/gcp'
alias mv='gmv'
alias rm='grm'
alias ln='gln'
alias awk='gawk'
export EDITOR='~/bin/x'
export VISUAL='~/bin/x'
export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
}

case `uname` in
    Linux)
        do_linux_aliases
        ;;
    Darwin)
        do_mac_aliases
        ;;
esac
alias pla='xelatex -interaction=nonstopmode'
alias princess='ssh mvrmartin@princess.willab.fi'
alias qoetus='ssh mvr@qoetus.willab.fi'
# alias l='gls -lah --color'
# alias ls='gls --color'
# #alias x='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c'
# alias pla='xelatex -interaction=nonstopmode'
# alias cp='/usr/local/bin/gcp'
# alias mv='gmv'
# alias rm='grm'
# alias ln='gln'
# alias awk='gawk'
# alias princess='ssh mvrmartin@princess.willab.fi'
# alias qoetus='ssh mvr@qoetus.willab.fi'
# export EDITOR='~/bin/x'
# export VISUAL='~/bin/x'
# export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"


PATH=~/Dropbox/share/bin/:~/bin/:~/Library/Haskell/bin/:/usr/local/bin:$PATH
PATH=$PATH:/Users/mvr/.gem/ruby/1.8/bin
export PATH


if Darwin=~`uname -a`; then
    source "`brew --prefix grc`/etc/grc.bashrc"
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

