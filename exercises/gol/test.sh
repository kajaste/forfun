#!/bin/bash

for tc in {1..2}; do
    ./gol.py < tc${tc}-in.txt > tc-actual.txt
    diff tc${tc}-out.txt tc-actual.txt \
        && echo "tc-${tc} passed..." \
        || echo "tc-${tc} FAILED!!!"
done

