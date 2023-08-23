#!/bin/bash
# author: Jakob Gruber, TU Wien
# downloads log files from cddis.nasa.gov
# <function> yyyy sess st1 st2 st3 ...
#       yyyy ... year (e.g. 2020)
#       sess ... sess (e.g. aua065)
#       st1 ... station (e.g. hb)

echo "usage: downloadStLog.sh 2020 vo1021 mg wf k2"

#for i in ${@:3}; do
#  wget --auth-no-challenge --user=jgruber --password=GetData4Jakob --cut-dirs=12 "https://cddis.nasa.gov/archive/vlbi/ivsdata/aux/${1}/${2}/${2}${i}.log"
#done

for i in ${@:3}; do
  wget --auth-no-challenge --user=vsc4 --password=F0uriertransform --cut-dirs=12 "https://cddis.nasa.gov/archive/vlbi/ivsdata/aux/${1}/${2}/${2}${i}.log"
done
