#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset -b
xrdb -merge ~/.Xresources
setxkbmap de
sh ~/.fehbg &

# Background
xsetroot -solid "#272822"

exec i3
# exec gnome-shell
# exec xmonad
# Automatically turnoff Touchpad while writing
# exec syndaemon -t -k -i 2 &
