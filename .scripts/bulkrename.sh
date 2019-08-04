ls -p | egrep -v /$ > /tmp/bulkrename-origin-tmp

cat /tmp/bulkrename-origin-tmp > /tmp/bulkrename-changes-tmp

vim /tmp/bulkrename-changes-tmp

readarray originArray < /tmp/bulkrename-origin-tmp
readarray changesArray < /tmp/bulkrename-changes-tmp

echo

i=0
while read j
do
	origin=${originArray[i]%?}
	change=${changesArray[i]%?}
	echo "$origin -> $change"
	((i++))
done</tmp/bulkrename-origin-tmp

echo

read -p "Commit changes? [y/n]" con

if [ "$con" == "y" ]; then
	((i=0))
	while read j
	do
		origin=${originArray[i]%?}
		change=${changesArray[i]%?}
		mv "$origin" "$change"
		((i++))
	done</tmp/bulkrename-origin-tmp

	echo "Committed!"

fi
