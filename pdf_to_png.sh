#!/bin/sh

find . -type f -name '*.pdf' |
while read -r f; do
    filename=$(basename "$f" .pdf).png
    pathdir=$(dirname "$f")
    echo $f
    pdftoppm -png $f > $pathdir/$filename
done
