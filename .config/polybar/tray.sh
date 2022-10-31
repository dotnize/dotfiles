id=$(xprop -name 'polybar-tray_eDP' _NET_WM_PID | grep -o '[[:digit:]]*')

polybar-msg -p $id cmd toggle
