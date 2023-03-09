#!/bin/bash

# md5sum 1219f5830e4a7208b1c7ba2f089a16c8

FILENAME="remasternet.pth.tar"
FILEURL="https://web.archive.org/web/20210825063317/http://iizuka.cs.tsukuba.ac.jp/data/remasternet.pth.tar"

echo "Downloading the RemasterNet (245MB)..."
wget --continue -O "model/$FILENAME" -- "$FILEURL"

echo "Checking integrity (md5sum)..."
OS=`uname -s`
if [ "$OS" = "Darwin" ]; then
  CHECKSUM=`cat model/$FILENAME | md5`
else
  CHECKSUM=`md5sum model/$FILENAME | awk '{ print $1 }'`
fi

echo -e "Download finished successfully!"
