#!/bin/bash -e

function add_newline {
    if [[ -z "$(tail -c 1 "$1")" ]]; then
        :
    else
        echo >> "$1"
    fi
}

FILES=$(git ls-files -o "*.h" "*.hpp" "*.c" "*.cpp")
clang-format -i ${FILES}
for f in ${FILES}; do
    add_newline $f
done