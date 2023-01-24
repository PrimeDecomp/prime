#!/bin/bash -e
VERSION="${VERSION:=0}"
OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -Dz -bbinary -EB -mpowerpc -M gekko"
if [ ! -z "$1" ]; then
  OPTIONS="--start-address=$(($1)) --stop-address=$(($2))"
fi
$OBJDUMP $OPTIONS versions/$VERSION/baserom.dol > baserom.dump
$OBJDUMP $OPTIONS build/mp1.$VERSION/main.dol > main.dump
diff -u --color=always baserom.dump main.dump
