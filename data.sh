#!/bin/bash

PATH_OUT="$HOME/.config/myhud/out"
PATH_IN="$HOME/.config/myhud/img"

declare -A TAB_PANE1=(
        ['PANE1']="fig1.png"
        ['BATH']=$(echo $(cat /sys/class/power_supply/BAT0/capacity)\%)
        ['CPU1']="NODISPLAY"
        ['CPU2']="NODISPLAY"
        ['CPU3']="NODISPLAY"
        ['CPU4']="NODISPLAY"
	['RAM']="$(free | sed "s/\ /\_/g")"
	['NETWORK']="$(cat /sys/class/net/wlp2s0/operstate)"
	['SWAP']="$(cat /proc/sys/vm/swappiness)"
	['UPDATE']="NODISPLAY"
	['VOLUME_STATE']="$(amixer sget Master | grep "Mono:" | cut -d ' ' -f 6)"
	['BRIGHT_STATE']="$(cat /sys/class/backlight/amdgpu_bl0/brightness)"
)

declare -A TAB_PANE2=(
        ['PANE2']="fig2.png"
	#['MPC_STATE']="$(mpc status | grep playing)"
	#['MPC_TITLE_NAME']="$(mpc -f %name%)"
)

declare -A TAB_PANE3=(
        ['PANE3']="fig3.png"
        ['HOUR']="NODISPLAY"
        ['WEATHER']="NODISPLAY"
        ['DATE']=$(echo "$(date | sed -e "s/\ /\_/g" )")
)
