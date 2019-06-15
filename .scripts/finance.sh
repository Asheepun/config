echo "commands: add, sub, log, sum, quit"

store=~/Documents/finances

quit="false"

while [ "$quit" == "false" ]
do

	read -p ": " com

	#if [[ "$com" == "add" || "$com" == "a" ]]
	if [ "$com" == "add" ]
	then
		read -p "value: " value
		read -p "tag: " tag

		add="$(date '+%Y/%m/%d') [ + $value kr] $tag"

		echo $add

		read -p "commit? [y/n] " commit

		if [ "$commit" == "y" ]
		then
			echo "committed!"
			echo $add >> $store
		else
			echo "rejected!"
		fi
	fi

	#if [[ "$com" == "sub" || "$com" == "s" ]]
	if [ "$com" == "sub" ]
	then
		read -p "value: " value
		read -p "tag: " tag

		add="$(date '+%Y/%m/%d') [ - $value kr] $tag"

		echo $add

		read -p "commit? [y/n] " commit

		if [ "$commit" == "y" ]
		then
			echo "committed!"
			echo $add >> $store
		else
			echo "rejected!"
		fi

	fi

	#if [[ "$com" == "log" || "$com" == "l" ]]
	if [ "$com" == "log" ]
	then
		cat $store 
	fi

	if [[ "$com" == "sum" || "$com" == "s" ]]
	then
		sum=0
		while read l; do
			
			#arr=( $l )
			read -a arr <<< $l

			let "sum = sum ${arr[2]} ${arr[3]}"

		done <$store

		echo " $sum kr"
	fi

	if [[ "$com" == "quit" || "$com" == "q" || "$com" == "exit" ]]
	then
		quit="true"
	fi

done



#echo "amount"

#read amount

#echo $amount
