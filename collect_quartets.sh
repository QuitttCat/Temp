#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <source_dir>"
    exit 1
fi

SRC="${1%/}"
DEST="${SRC/taxon/taxa}-weighted-quartets"

mkdir -p "$DEST"

count=0
while IFS= read -r filepath; do
    # Get path relative to SRC, strip leading slash, replace / with _
    relpath="${filepath#$SRC/}"
    flatname="${relpath//\//_}"

    cp "$filepath" "$DEST/$flatname"
    echo "Saved: $flatname"
    ((count++))
done < <(find "$SRC" -name "weighted_quartets" -type f)

echo ""
echo "Done. $count files copied to $DEST"
