#!/bin/sh

xdotool type $(grep -v '^#' ~/Nextcloud/snippets | dmenu -i -l 50 | cut -d' ' -f1)
