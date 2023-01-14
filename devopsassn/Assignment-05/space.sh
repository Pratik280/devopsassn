#!/bin/bash
#space_free=$( df -h | awk '{ print $5 }' | sort -n | tail -n 1 | sed 's/%//' )
space_free=99
case $space_free in
  [1-5]*)
    echo Plenty of disk space available
  ;;
  [6-7]*)
    echo There could be a problem in the near future
  ;;
  8*)
    echo Maybe we should look at clearing out old files
  ;;
  9*)
    echo We could have a serious problem on our hands soon
  ;;
  *)
    echo Something is not quite right here
  ;;
esac

#[1-5]*
#1* => 11 12 13 14 15... 19
#2* => 20 21 22 23 ... 29
#3* => 31 31 33 34 .. 39
#4* => 41 41 41 ... 49
#5* => 51 52 53 .... 59
