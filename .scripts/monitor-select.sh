output=$(xrandr | grep " connected" | sed 's/\s.*$//' | tac | dmenu -i)

for i in $(xrandr | grep " connected" | sed 's/\s.*$//')
do
	xrandr --output $i --off
done

xrandr --output $output --auto

feh --bg-fill ~/Pictures/background.jpg
