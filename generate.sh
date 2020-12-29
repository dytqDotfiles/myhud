#!/bin/bash

source $HOME/.config/myhud/data.sh

function write_text() {
	convert -colorspace RGB -pointsize 20 -fill white -gravity north-west -draw 'text 1650,100 "BATTERIE='${TAB_PANE1["BATH"]}'"' -draw 'text 1650,130 "CPU1='${TAB_PANE1["CPU1"]}'"' -draw 'text 1650,160 "CPU2='${TAB_PANE1["CPU2"]}'"' -draw 'text 1650,190 "CPU3='${TAB_PANE1["CPU3"]}'"' -draw 'text 1650,220 "CPU4='${TAB_PANE1["CPU3"]}'"' -draw 'text 1650,250 "RAM='${TAB_PANE1["RAM"]}'"' -draw 'text 1650,280 "NETWORK='${TAB_PANE1["NETWORK"]}'"' -draw 'text 1650,310 "SWAP='${TAB_PANE1["SWAP"]}'"' -draw 'text 1650,340 "UPDATE='${TAB_PANE1["UPDATE"]}'"' -draw 'text 1650,370 "VOLUME='${TAB_PANE1["VOLUME_STATE"]}'"' -draw 'text 1650,400 "LUMINOSITÉ='${TAB_PANE1["BRIGHT_STATE"]}'"' -draw 'text 10,350 "MPC_STATE='${TAB_PANE2["MPC_STATE"]}'"' -draw 'text 10,380 "MPC_TITLE_NAME='${TAB_PANE2["MPC_TITLE_NAME"]}'"' -draw 'text 10,10 "HOUR='${TAB_PANE3["HOUR"]}'"' -draw 'text 10,40 "WEATHER='${TAB_PANE3["WEATHER"]}'"' -draw 'text 10,70 "DATE='${TAB_PANE3["DATE"]}'"' $1 $1
}

function build_wall() {
	cp $PATH_OUT/wall.png $PATH_OUT/res.png
	write_text $PATH_OUT/res.png 
}

build_wall
