#!/bin/bash
year=2016
month=02
day=27
place=tatelishorn
dir=$year$month$day\_$place
number=1
archivedir=archive
textfile=legend.txt
if [ ! -d $dir ]; then
	echo " $dir does not exist, exiting..."
	exit
fi
cd $dir
echo "working dir is " $(pwd)
if [ ! -d $archivedir ]; then
	echo "creating archive directory"
	mkdir archive
fi
if [ ! -f $textfile ]; then	
	echo " creating text file " $textfile
	touch $textfile
fi

echo "{vsig}bildergalerie/$year/$dir{/vsig}" > $textfile
echo "removing whitspaces from file names"
find -name "* *" -type f | rename 's/ /_/g'
echo " start processing jpgs"
for jpg in $(ls *.[jJ][pP][gG])
do
	filename=$year\_$place\_$(printf "%02d" $number).jpg
	echo "compressing and moving $jpg to " $filename
	echo "{vsig_c}0|$filename||{/vsig_c}" >> $textfile
	
	#~/bin/downsize -s 450 -c yes $jpg $filename
	downsize -s 450 -c yes $jpg $filename
	echo "backing up in $archivedir/$jpg"
	mv $jpg archive
	number=$((number+1))
done
cd ..


