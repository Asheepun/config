dir=~/.config/mpd/playlists

rm $dir/*

ls ~/Music/Popular\ Problems | sed 's/^/Popular\ Problems\//' > $dir/Popular\ Problems.m3u

for name in $(ls ~/Music/Jazz/Hand-picked)
do
	ls ~/Music/Jazz/Hand-picked/$name | sed "s/^/Jazz\/Hand-picked\/$name\//" > $dir/$name.m3u
done
