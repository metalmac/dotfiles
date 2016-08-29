
#!/bin/sh
#
# name     : tmuxen， tmux environment made easy
# author   : Xu Xiaodong xxdlhy@gmail.com
# license  : GPL
# created  : 2012 Jul 01
# modified : 2016 Aug 02 by metalmac.kyle, cathch_windking@hotmail.com
#

cmd=$(which tmux) # tmux path
session=$(hostname -s)   # session name

if [ -z $cmd ]; then
      echo "You need to install tmux."
        exit 1
    fi

    $cmd has -t $session 2>/dev/null

if [ $? -ne 0 ]; then
        $cmd new -d -n vim -s  $session "vim"
        $cmd splitw -v -p 35
        $cmd neww -n terminal -t $session "bash"
        $cmd splitw -h -p 50 
        $cmd selectw -t $session:1
fi
        $cmd att -t $session
exit 0
