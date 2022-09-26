xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
xinput set-prop "SynPS/2 Synaptics TouchPad" "352" "1"
xinput set-prop "SynPS/2 Synaptics TouchPad" "300" "1"
xrandr --output eDP-1 --mode 1920x1080 --brightness 1.0
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute
amixer -c 0 -- sset Master playback 40dB
amixer -c 0 -- sset Speaker playback 40dB
amixer -c 0 -- sset Headphone playback 40dB
udiskie &
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape' &
xset r rate 300 50
exec i3
