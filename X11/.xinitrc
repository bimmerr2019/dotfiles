xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
xinput set-prop "SynPS/2 Synaptics TouchPad" "306" "1"
xinput set-prop "SynPS/2 Synaptics TouchPad" "326" "1"
exec i3
