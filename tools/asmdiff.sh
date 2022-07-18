#!/bin/bash -e

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -D -bbinary -EB -mpowerpc -M gekko"
if [ ! -z "$1" ]; then
OPTIONS="--start-address=$(($1)) --stop-address=$(($2))"
fi
$OBJDUMP $OPTIONS baserom.dol > baserom.dump
$OBJDUMP $OPTIONS build/mp1.0/main.dol > main.dump
diff -u --color=always baserom.dump main.dump
