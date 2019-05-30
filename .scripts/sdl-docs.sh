file=""

file=$(ls ~/Documents/SDL2-Docs/docs/ | ~/Git-src/fzf/fzf)

echo $file

(surf ~/Documents/SDL2-Docs/docs/$file &)
