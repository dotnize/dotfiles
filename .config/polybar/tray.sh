id=$(xprop -name 'polybar-tray_HDMI-A-0' _NET_WM_PID | grep -o '[[:digit:]]*')

if [ $? -eq 0 ]
then
	polybar-msg -p $id cmd quit
else
	polybar tray & disown
fi
