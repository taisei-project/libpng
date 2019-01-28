#!/bin/sh
make
cp -p png2pnm-shared png2pnm
# cp -p png2pnm-static png2pnm
cp -p pnm2png-shared pnm2png
# cp -p pnm2png-static pnm2png
sh png2pnm.sh
sh pnm2png.sh

