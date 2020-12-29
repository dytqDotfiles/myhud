while true
do
	$HOME/.config/myhud/generate.sh
	feh --bg-fill $HOME/.config/myhud/out/wall.png
	sleep 2
done
