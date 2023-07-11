# start sway desktop
if [ "$(tty)" = "/dev/tty1" ]; then
    export GTK_THEME=Gruvbox-Dark-BL
    export QT_QPA_PLATFORM=wayland
    export QT_QPA_PLATFORMTHEME=gnome
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=sway
    export MENU='fuzzel --background-color=282828dd --text-color=ebdbb2ff --selection-color=ebdbb2ff --selection-text-color=282828ff --match-color=89b482ff --no-icons --border-width=0'
    exec sway
fi


# Added by Toolbox App
export PATH="$PATH:/home/nize/.local/share/JetBrains/Toolbox/scripts"
