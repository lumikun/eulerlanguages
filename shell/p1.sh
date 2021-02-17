#!/bin/sh
ans = 0 
for i in {1..999}; do
    if [ $((i % 3)) -eq 0 ] || [ $((i %)) -eq 0]; then
        ans = $((ans + i))
    fi
done
echo ${ans}