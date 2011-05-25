#!/bin/sh

ispdns='202.106.196.115'
for i in 0 1 2 3 4
do
   curl -s "http://www.alexa.com/topsites/countries;$i/CN" | grep "small topsites-label"  | \
   sed -e "s#.*>\([^ ]*\)<.*#server=/\1/$ispdns#g"
done

