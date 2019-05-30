#copy assets.js
cp /home/asheepun/Documents/Projects/q_webpack-bab/public/js/lib/assets.js /tmp/assets.js


#update dir
rm -r -d /home/asheepun/Documents/Projects/q_webpack-bab/public/js
cp /home/asheepun/Documents/Projects/boyandbox/public/js /home/asheepun/Documents/Projects/q_webpack-bab/public/js -R
 
#add old assets.js file
cp /tmp/assets.js /home/asheepun/Documents/Projects/q_webpack-bab/public/js/lib/assets.js
rm /tmp/assets.js

cd /home/asheepun/Documents/Projects/q_webpack-bab/public/js

sed -i "s/\/js/./g" *.js

#fix stupid string handling
sed -i "s/¤/G/g" generateLevel.js
sed -i "s/¤/G/g" levels.js
sed -i "s/tile === \"¤\"/tile === \"G\"/g" generateTileImg.js

sed -i "s/£/w/g" generateLevel.js
sed -i "s/£/w/g" levels.js

sed -i "s/µ/m/g" generateLevel.js
sed -i "s/µ/m/g" levels.js

echo hello

cd ./lib

sed -i "s/\/js\/lib/./g" *.js

cd ../../../

npm start
