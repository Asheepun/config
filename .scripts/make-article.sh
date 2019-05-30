echo Article name:

read name

mkdir $name

cd $name

filename="$name.tex"

cp ~/Documents/Latex-templates/article.tex $filename

vim $filename
