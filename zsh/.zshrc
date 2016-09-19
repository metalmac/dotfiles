#!/bin/zsh  # Path to your oh-my-zsh installation.
  export ZSH=/root/.oh-my-zsh
#export DISPLAY=:0.0

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
# ===========================================
# Common Settings
# ===========================================
#autoload -U compinit && compinit
ZSH_THEME="ys"
#If you’re ever in a large directory and you try to tab complete, this will add some waiting dots so you know that Zsh is still working. A bit more helpful than just mashing the tab key until you see something.
COMPLETION_WAITING_DOTS="true" 
#This will highlight the patterns you specify in a color of your choice. 
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)


#source .zshrc aliases
alias reload="source ~/.zshrc && echo 'Your zshrc file has been reloaded'"
#

#This is my zsh plugins settings

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(git 
        git-extras 
        history 
        cp 
        colorize
        command-not-found
        fasd 
        tmux 
        autojump 
        colored-man-pages 
        ubuntu 
        z 
        dirhistory
        vi-mode
        zsh-syntax-highlighting
        zsh-history-substring-search
        )
#customized plugins source
#source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

#source for customized plugins
#
#source relative zsh settings file
source $ZSH/oh-my-zsh.sh
#source ~/.profile

for file in ~/.oh-my-zsh/custom/sourced/* ; do
       source "$file"
   done

#Automatically mount shared folder from host Windows to virtual machine Linux as Machine booted
. ~/mount_shared_folder.zsh

#Automatically swap CapsLock with Right Ctrl
xmodmap ~/.capslockSwapRctrl 2>/dev/null

