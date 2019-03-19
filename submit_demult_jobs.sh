#!/bin/bash

for dir in *.gz
do 
  base=`echo $dir | awk 'BEGIN{FS="_"}{print$1}'`
  sed "s/BASE/$base/g" pyrad_demultiplex.pbs | qsub
done
