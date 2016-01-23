#!/bin/bash


Home=/home/hacker/Hackathon/
Train_Home=./data/train/
Bin_Home=./bin/
Output_Home=./output/
simple_feature=simple-feature


cd $Home

rm -rf $Output_Home$simple_feature
touch  $Output_Home$simple_feature

counter=0
for i in `ls ./data/train`
do
    ./bin/SimpleHtmlExtractor   $Train_Home$i  1 >> $Output_Home$simple_feature 2>/dev/null
   # echo  -e "\n" >>  $Output_Home$simple_feature 
    counter=$(($counter+1))
    echo $counter, $i
   if [ $counter -gt 200 ]; then
	echo "reach here"
	break	
   fi
done

# $Bin_Home"ml_trainer"  $Output_Home$simple_feature

 

