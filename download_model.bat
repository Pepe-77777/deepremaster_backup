@echo off
mkdir model
cd model
echo Downloading the RemasterNet (245MB)...
curl https://web.archive.org/web/20210825063317/http://iizuka.cs.tsukuba.ac.jp/data/remasternet.pth.tar --output remasternet.pth.tar
