#!/bin/sh
IMAGES=$(ls ./images/screenshots/*.jpg)
DIST=./dist/screenshots/

if [ -d "$DIST" ]; then
    rm -R $DIST
fi

mkdir -p $DIST

for IMG in $IMAGES
do
    convert $IMG -resize 600x400 "$DIST$(basename $IMG)"
done

