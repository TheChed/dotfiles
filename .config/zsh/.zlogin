if [[ "$(tty)" = "/dev/tty1" ]]; then
#    pgrep dwm || startx "$XDG_CONFIG_HOME/X11/xinitrc"
if uwsm check may-start; then
        exec uwsm start hyprland-uwsm.desktop
fi
fi
