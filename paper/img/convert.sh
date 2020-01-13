#!/bin/bash
for infile in *.pdf; do
 convert -density 300  -flatten -define png:color-type=2 $infile ../../png/${infile%.*}.png ;
done
for infile in *.png; do
 convert -density 300  -flatten $infile ../../png/${infile%.*}.png ;
done

