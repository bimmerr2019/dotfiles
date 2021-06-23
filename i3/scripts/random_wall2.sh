#!/bin/bash
wallpaperdir="$HOME/dotfiles/i3/wallpapers"

files=($wallpaperdir/*)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

cp $randompic $HOME/.config/i3/feh/wallpaper.jpg
feh --no-fehbg --bg-fill $HOME/.config/i3/feh/wallpaper.jpg

