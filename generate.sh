#!/bin/bash

###############
# EDIT CONFIG #
###############

PATH_OUT="out"
PATH_IN="img"

declare -A TAB_PANE1=(
	['PANE1']="fig1.png"
	['BATH']=$(echo $(cat /sys/class/power_supply/BAT0/capacity)\%)
	['CPU1']="NODISPLAY"
	['CPU2']="NODISPLAY"
	['CPU3']="NODISPLAY"
	['CPU4']="NODISPLAY"
	['RAM']="NODISPLAY"
	['NETWORK']="NODISPLAY"
	['SWAP']="NODISPLAY"
	['UPDATE']="NODISPLAY"
	['VOLUME_STATE']="NODISPLAY"
	['BRIGHT_STATE']="NODISPLAY"
)

declare -A TAB_PANE2=(
	['PANE2']="fig2.png"
	['MPC_STATE']="NODISPLAY"
	['MPC_TITLE_NAME']="NODISPLAY"
)

declare -A TAB_PANE3=(
	['PANE3']="fig3.png"
	['HOUR']="NODISPLAY"
	['WEATHER']="NODISPLAY"
	['DATE']="NODISPLAY"
)

###################
# EDIT NAME LABEL #
###################

function write_in_pane1() {
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,10 "BATTERIE='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,30 "CPU1='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,60 "CPU2='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,90 "CPU3='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,120 "CPU4='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,150 "RAM='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,180 "NETWORK='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,210 "SWAP='${TAB_PANE1["BATH"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,240 "UPDATE='${TAB_PANE1["BATH"]}'"' $1 $1

	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,270 "VOLUME='${TAB_PANE1["bath"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,300 "LUMINOSITÉ='${TAB_PANE1["BATH"]}'"' $1 $1
}

function write_in_pane2() {
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,10 "MPC_STATE='${TAB_PANE2["MPC_STATE"]}'"' $1 $1
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,30 "MPC_TITLE_NAME='${TAB_PANE2["MPC_TITLE_NAME"]}'"' $1 $1*
}

function write_in_pane3() {
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,10 "HOUR='${TAB_PANE3["HOUR"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,30 "WEATHER='${TAB_PANE3["WEATHER"]}'"' $1 $1
	
	convert -pointsize 20 -fill white -gravity north-west -draw 'text 10,60 "DATE='${TAB_PANE3["DATE"]}'"' $1 $1

}

function build_wall() {
	cp $PATH_IN/${TAB_PANE1["PANE1"]} $PATH_OUT
	cp $PATH_IN/${TAB_PANE2["PANE2"]} $PATH_OUT
	cp $PATH_IN/${TAB_PANE3["PANE3"]} $PATH_OUT
	cp $PATH_IN/wall.png $PATH_OUT
	
	write_in_pane1 $PATH_OUT/${TAB_PANE1["PANE1"]} 
	write_in_pane2 $PATH_OUT/${TAB_PANE2["PANE2"]}
	write_in_pane3 $PATH_OUT/${TAB_PANE3["PANE3"]}

	magick composite -gravity east $PATH_OUT/${TAB_PANE1["PANE1"]} $PATH_OUT/wall.png $PATH_OUT/wall.png
	magick composite -gravity south-west $PATH_OUT/${TAB_PANE2["PANE2"]} $PATH_OUT/wall.png $PATH_OUT/wall.png
	magick composite -gravity north-west $PATH_OUT/${TAB_PANE3["PANE3"]} $PATH_OUT/wall.png $PATH_OUT/wall.png
}

build_wall
