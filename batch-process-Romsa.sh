#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    WORD="$(wc -w "${f}" | cut -d ' ' -f1)"
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    printf "File size:\t\t %s\n" "$SIZE"
    printf "Number of words:\t %s\n" "$WORD"
  fi
done

