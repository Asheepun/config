#!/bin/bash

#if [$1 == ""]; then
	#read -p "img: " img
#else
	#img=$1
#fi
#
#if [$2 == ""];then
	#read -p "frames: " frames
#else
	#frames=$2
#fi
#
#if [$3 == ""];then
	#read -p "size: " size
#else
	#size=$3
#fi
#if [$4 == ""];then
	#read -p "delay: " tmpdelay
#else
	#tmpdelay=$4
#fi

clear

img=$1
frames=$2
size=$3
tmpdelay=$4

#cat $frames | jq -r ".[]"

#for i in cat $frames | grep '	"'
#	k

#echo "Select state"

#COUNT=0
#grep '	"' $frames | while read -r line ; do
#	echo "$COUNT-" "$line" | sed 's/[[": ]//g'
#	COUNT=$(($COUNT+1))
#done

#read -p ":" statenum

#COUNT=0
#grep '	"' $frames | while read -r line ; do
#	if [ $COUNT -eq $statenum ]; then
#		#state=$(sed 's/[[": ]//g' -f $line)
#		tmp < $line | sed 's/[[": ]//g'
#	fi
#	COUNT=$(($COUNT+1))
	#state=$($line | sed 's/[[": ]//g')
#done

#state=$(sed -n "{$statenum}" tmp)

#echo $state

read -p "state: " state

delay=$(bc <<< "scale=4; $tmpdelay * 1 / 60")

reload="y"

while [ $reload == "y" ]
do
	mkdir tmp-animation

	cp $img tmp-animation/img.png
	cp $frames tmp-animation/frames.json

	length=$(cat tmp-animation/frames.json | jq -r ".still | length")

	length=$((length-1));

	COUNTER=0
	while [  $COUNTER -lt $length ]; do
		x=$(cat tmp-animation/frames.json | jq -r ".$state[$COUNTER][0]")
		y=$(cat tmp-animation/frames.json | jq -r ".$state[$COUNTER][1]")
		convert tmp-animation/img.png -crop $size+$x+$y tmp-animation/$COUNTER.png

		let COUNTER=COUNTER+1 
	done

	rm tmp-animation/img.png
	rm tmp-animation/frames.json

	feh -r -B black -D $delay -g 500x500 -Z --force-aliasing tmp-animation/

	rm -R tmp-animation

	read -p "Reload?" tmp
	reload=$tmp
done
