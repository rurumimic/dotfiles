### Neofetch ###

# if [ "$TERM" = "xterm-kitty" && -s "$PICTURE" ]; then
    # neofetch --kitty $picture
# fi

if [ -f "$HOME/.config/neofetch/batman.ascii" ]; then
    neofetch --ascii ~/.config/neofetch/batman.ascii
else
    neofetch
fi

