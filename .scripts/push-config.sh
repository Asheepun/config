p=~/Documents/config/config_files

#files
cp ~/.bashrc $p
cp ~/.profile $p
cp ~/.vimrc $p
cp ~/.i3blocks.conf $p
cp ~/.scimrc $p
cp ~/.urlview $p
cp ~/.Xdefaults $p

#dirs
cp -r ~/.config $p
cp -r ~/.newsbeuter $p
cp -r ~/.urlview $p
cp -r ~/.fonts $p
cp -r ~/.fonts.conf $p
cp -r ~/.ncmpcpp $p
cp -r ~/.urxvt $p

cp -r ~/.scripts ~/Documents/config

cd ~/Documents/config

git add .

date=$(date)

git commit -m "$date"

git push
