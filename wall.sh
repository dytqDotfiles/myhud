while true
do
	$HOME/.config/myhud/generate.sh
	feh --bg-center $HOME/.config/myhud/out/wall.png
	sleep 1
done
