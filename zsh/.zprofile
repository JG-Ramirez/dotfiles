# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec sway

eval "$(/opt/homebrew/bin/brew shellenv)"
