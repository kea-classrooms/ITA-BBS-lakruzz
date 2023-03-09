#!/bin/env bash
 
cd $(git rev-parse --show-toplevel)/samples/

echo VI står nu her:

pwd

mv animals/countries/ .
mv countries/movies/ .
mv countries/.apes.txt  animals/
mv movies/Germany.txt countries/
mv animals/Monkies.txt animals/Monkyes.txt 
echo Monkeys > animals/Monkyes.txt 