dir=~/.config/mpd/playlists

rm $dir/*

#ls ~/Music/Popular\ Problems | sed 's/^/Popular\ Problems\//' > $dir/Popular\ Problems.m3u

#ls ~/Music/Jazz/the\ Skatelites | sed 's/^/Jazz\/the\ Skatelites\//' > $dir/the\ Skatelites.m3u

#ls ~/Music/Jazz/Back\ to\ Black | sed 's/^/Jazz\/Back\ to\ Black\//' > $dir/Back\ to\ Black.m3u

#ls ~/Music/Hard\ Bass | sed 's/^/Hard\ Bass\//' > $dir/Hard\ Bass.m3u

IFS='
'
for filePath in ~/Music/*
do
	name=$(basename $filePath .mp3)
	#nameESC=$(echo $name | sed "s/[\*\.&]/\\&/g")

	nameESC=$(sed 's/[\*\.&]/\\&/g' <<<"$name")

	echo $nameESC
	ls ~/Music/$name| sed "s/^/$nameESC\//" > $dir/$name.m3u
	#ls ~/Music/$name > $dir/$name.m3u
done

for filePath in ~/Music/Jazz/*
do
	name=$(basename $filePath .mp3)
	#nameESC=$(echo $name | sed "s/[\*\.&]/\\&/g")

	nameESC=$(sed 's/[\*\.&]/\\&/g' <<<"$name")

	echo $nameESC
	ls ~/Music/Jazz/$name| sed "s/^/Jazz\/$nameESC\//" > $dir/$name.m3u
	#ls ~/Music/Jazz/$name > $dir/$name.m3u
done

for name in $(ls ~/Music/Jazz/Hand-picked)
do
	ls ~/Music/Jazz/Hand-picked/$name | sed "s/^/Jazz\/Hand-picked\/$name\//" > $dir/$name.m3u
done

rm $dir/Hand-picked.m3u
rm $dir/Jazz.m3u

set -f
