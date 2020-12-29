#!/bin/bash

source data.sh

cp $PATH_IN/${TAB_PANE1["PANE1"]} $PATH_OUT
cp $PATH_IN/${TAB_PANE2["PANE2"]} $PATH_OUT
cp $PATH_IN/${TAB_PANE3["PANE3"]} $PATH_OUT
cp $PATH_IN/wall.png $PATH_OUT

magick composite -gravity east $PATH_OUT/${TAB_PANE1["PANE1"]} $PATH_OUT/wall.png $PATH_OUT/wall.png

magick composite -gravity south-west $PATH_OUT/${TAB_PANE2["PANE2"]} $PATH_OUT/wall.png $PATH_OUT/wall.png

magick composite -gravity north-west $PATH_OUT/${TAB_PANE3["PANE3"]} $PATH_OUT/wall.png $PATH_OUT/wall.png
