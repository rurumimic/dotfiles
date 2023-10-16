### Neofetch ###

# if [ "$TERM" = "xterm-kitty" && -s "$PICTURE" ]; then
    # neofetch --kitty $picture
# fi

if [ -f "$HOME/neotfetch/batman.ascii" ]; then
    neofetch --ascii ~/.config/neofetch/batman.ascii
else
    neofetch
fi

