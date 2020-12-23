#!/usr/bin/env bash

# Terminate already running bar instances
if tty=$(tty 2> /dev/null); then
	pkill -t "${tty#/dev/}" -x polybar

	# Wait until the processes have been shut down
	while pgrep -t "${tty#/dev/}" -u $UID -x polybar >/dev/null; do sleep 1; done
else
	killall polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
fi

# Launch 2 polybar for 2 monitors
external_monitor=$(xrandr --query | grep 'HDMI1 connected')
external_monitor2=$(xrandr --query | grep 'HDMI-1-1 connected')

if [[ $(xrandr | grep "eDP1") ]]; then
	module="main"
	module_external="main_external"
else
	module="main2"
	module_external="main_external2"
fi

if [[ $external_monitor || $external_monitor2 ]]; then
	polybar $module -c $(dirname $0)/config.ini &
	polybar $module_external -c $(dirname $0)/config.ini &
else
	polybar $module -c $(dirname $0)/config.ini &
fi

