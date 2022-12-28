@echo off
mkdir model
cd model
echo Downloading the RemasterNet (245MB)...
curl http://iizuka.cs.tsukuba.ac.jp/data/remasternet.pth.tar --output remasternet.pth.tar