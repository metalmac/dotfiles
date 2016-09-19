# ~/.profile: executed by Bourne-compatible login shells.
#xmodmap -e 'clear Lock'-e 'keycode 0x42 = Ctrl'
#export DISPLAY=:0.0
#xmodmap ~/.capslockSwapRctrl



if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n
