#!/bin/bash

# config space
TAB_PANE1=(
	PANE1=fig1.png
	BATH="NO DISPLAY"
	CPU1="NO DISPLAY"
	CPU2="NO DISPLAY"
	CPU3="NO DISPLAY"
	CPU4="NO DISPLAY"
	RAM="NO DISPLAY"
	NETWORK="NO DISPLAY"
	SWAP="NO DISPLAY"
	UPDATE="NO DISPLAY"
	VOLUME_STATE="NO DISPLAY"
	BRIGHT_STATE="NO DISPLAY"
)

TAB_PANE2=(
	PANE2=fig2.png
	MPC_STATE="NO DISPLAY"
	MPC_TITLE_NAME="NO DISPLAY"
)

TAB_PANE3=(
	PANE3=fig3.png
	HOUR="NO DISPLAY"
	WEATHER="NO DISPLAY"
)

function write_in_pane() {
	
}

function built_wall() {
	cp img/TAB_PANE1[0] out/.
	cp img/TAB_PANE2[1] out/.
	cp img/TAB_PANE3[2] out/.

	
	write_in_pane out/TAB_PANE1 TAB_PANE1
	write_in_pane out/TAB_PANE2 TAB_PANE2
	write_in_pane out/TAB_PANE3 TAB_PANE3
}
