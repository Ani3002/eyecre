#!/bin/bash

# Set the path to your PNG file
image_path="image.png"

# Set the padding in pixels
#padding=10

# Set the time interval in seconds
interval=8

# Function to display the image using feh
display_image() {
    prev_focused_window=$(xdotool getwindowfocus)

    screen_width=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d'x' -f1)
    screen_height=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d'x' -f2)
    
    image_width=$(identify -format "%w" "$image_path")
    image_height=$(identify -format "%h" "$image_path")
    
    window_width=$((image_width + 2 * padding))
    window_height=$((image_height + 2 * padding))
    
    pos_x=$(( (screen_width - window_width) / 2 ))
    pos_y=$(( (screen_height - window_height) / 2 ))

    feh --hide-pointer --geometry ${window_width}x${window_height}+${pos_x}+${pos_y} --on-root "$image_path" &
    sleep 0.08
    pkill -f "feh --hide-pointer"

    # Restore focus to the previous window
    xdotool windowactivate $prev_focused_window
}

# Function to bring the window to the top
bring_to_top() {
    window_id=$(xdotool search --onlyvisible --class "feh")
    wmctrl -i -a "$window_id"
}

# Main loop
while true; do
    display_image
    sleep "$interval"
    bring_to_top
done
