#!/bin/bash


echo "Starting this script (hopefully it is executable with chmod a+x ./miner.sh)"

for nonce in $(seq 0 999); do
    for word in $(cat ../data/dictionary); do
        nonceword="${nonce}${word}"
        echo -n "$nonceword "
        echo -n "$nonceword" | sha256sum
    done
done
