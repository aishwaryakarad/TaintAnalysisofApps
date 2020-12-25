#!/bin/bash
num=22 
for i in mp4-appset-4/*
do
echo "APK number $num";
java -Xmx24g -jar argus-saf_2.12-3.2.0-assembly.jar -mo DATA_LEAKAGE -a COMPONENT_BASED t -o ./output2/$num ./$i ;
((num=num +1))
done
