# get this file loaded at startup

# get the function for git hooks
[[ -f ~/.bash_functions ]] && source ~/.bash_functions
# get the function for showing white space, which I don't think works...
[[ -f ~/.vim_white_space ]] && source ~/.vim_white_space

export BRIGHTTAG_HOME=/Users/richvogt/dev/brighttag
export PATH=$PATH:$BRIGHTTAG_HOME/ops/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/dev/ops/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias subl='open -a /Applications/Sublime\ Text\ 2.app'
which -s subl && export EDITOR="subl --wait"


alias g="ssh rvogt@guestvm"
alias b="ssh bright@guestvm"

# Add some color to terminal output

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GREP_OPTIONS='--color=auto'
alias ls='ls -lFh'
alias ll='ls -lh'

# customize the command prompt



# git bash completion

if [ -f `brew --prefix`/etc/bash_completion ]; then
     . `brew --prefix`/etc/bash_completion
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Customize the command prompt
# http://osxdaily.com/2006/12/11/how-to-customize-your-terminal-prompt/

export PS1="\d \W \[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "


[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM


# Whenever I cd, I want to see the contents of that directory.
 cd() {
  builtin cd "$@"
  ls
}

alias resetroni='$BRIGHTTAG_HOME/roni/bin/roni sync vendor local vendors/*.xml ; $BRIGHTTAG_HOME/roni/bin/roni sync product local products/*.xml ; $BRIGHTTAG_HOME/roni/bin/roni sync tag local tags/{server,client,utility}/*.xml'

source ~/.nvm/nvm.sh

#
function cdb {
  cd /Users/richvogt/dev/brighttag/$1
}

# Alias for md5 checksum.
# OS X has a built-in md5 -r utility
alias md5='md5 -r'
alias md5sum='md5 -r'
