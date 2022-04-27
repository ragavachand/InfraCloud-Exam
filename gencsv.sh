#!/bin/bash

RANDOM=$$
for i in `seq 10`
do
        echo $i,$RANDOM >> inputFile
done

chmod 777 inputFile
