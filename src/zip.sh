#!/bin/sh

SUFFIX=$1

if [ -z "$SUFFIX" ]; then
    SUFFIX="master"
fi

PREFIX="SRS"
LIST="src/internal_ultimate.lst"
DATA="GameData legal README.md"

echo "main zip:"
zip -9 -r "${PREFIX}_${SUFFIX}.zip"           $DATA -x@$LIST

echo "IVA patch:"
zip -9 -r "${PREFIX}_IVA_patch_${SUFFIX}.zip" $DATA -i@$LIST

