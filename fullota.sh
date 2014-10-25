#!/bin/bash
#author:liuxingghost
echo " <<< . build/envsetup.sh >>> "
. build.sh
echo " <<< make clean >>>"
coron clean
echo " <<< make fullota >>> "
coron fullota
echo " <<< fullota success >>> "
ls out/*-liuxingghost.zip
