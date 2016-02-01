#!/bin/bash

shopt -s nullglob
cd ~/.wallpaper

while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}
	image=${files[RANDOM % range]}
	echo ${image} 
	((range)) && feh --bg-scale ${image} 
	echo "~/.wallpaper/${image}"
	cp ~/.wallpaper/${image} ~/.wallpaper/currentImage.png	

	sleep 5m
done
