#!/bin/sh
# TODO fix this so it works, might just be me being stupid, but i think this should work.
function fibs
{
    ans=0
    x=0
    y=1
    i=2
    while [$i -lt $n]
    do
        i=`expr $i + 1`
        z=`expr $x + $y`
        x=$y
        y=$z
        if [$y % 2] 
        then
            ans=`expr $y + $ans`
        fi
    done
    ans=$y
}
n=4000000
ans=`fibs $n`