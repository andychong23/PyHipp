#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l


echo 
# creating the format required
echo "#==========================================================="
echo "Start Times"

find . -name "*.queue1*.out" -printf "%f\n" | xargs head -1

echo "End Times"
find . -name "*.queue1*.out" -printf "%f\n" | xargs tail -n5

# end format
echo "#==========================================================="



