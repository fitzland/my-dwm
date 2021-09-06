#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
run "dex $HOME/.config/autostart/arcolinux-welcome-app.desktop"
#run xrandr --output HDMI2 --right-of HDMI1 --auto
run xrandr --output DP-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-4 --mode 1920x1080 --pos 0x0 --rotate normal
#autorandr horizontal

run "nm-applet"
run "pamac-tray"
#run "variety"
#run "xfce4-power-manager"
run "blueberry-tray"
#run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/dwm/picom.conf &
run "numlockx on"
setxkbmap -option compose:rctrl &
run "volumeicon"
run slstatus &
sxhkd -c ~/.config/dwm/sxhkd/sxhkdrc &
#run "nitrogen --restore"
run "conky -c $HOME/.config/dwm/system-overview"
#you can set wallpapers in themes as well
feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &

#run applications from startup

#run "insync start"
#run "spotify"
#run "ckb-next -b"
run "dropbox"
#run "telegram-desktop"
