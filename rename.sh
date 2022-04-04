echo "$1 -> $2"
find . -type f -name '*.s' | xargs sed -i "s/$1/$2/g"
