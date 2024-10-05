# feh --bg-scale $HOME/Pictures/wallpaper/lain_closetheworld.png
feh --bg-fill $HOME/Pictures/wallpaper/rizzmaster.png
dunst &
dwmblocks &
[ ! -s ~/.config/mpd/pid ] && mpd
xinput set-prop 11 "Coordinate Transformation Matrix" 0.75 0 0 0 0.75 0 0 0 1
picom &
