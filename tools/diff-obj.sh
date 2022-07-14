#!/bin/bash -e
../asm_differ/diff.py -mwo -f build/mp1.0/src/"$1" "$2" --width 100 -U 20
