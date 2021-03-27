#!/bin/bash
wallpaperdir="$HOME/dotfiles/i3/wallpapers"

files=($wallpaperdir/*)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

cp $randompic $HOME/dotfiles/i3/feh/wallpaper.jpg

