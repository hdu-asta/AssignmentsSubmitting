#!/bin/bash
#clean program
#Aruther:zhouqipeng

echo cleaning......

#for a in ~/.local/share/Trash/files;
#	do
#	printf "we have deleted "
#	printf $a'\n'
#	ls ~/.local/share/Trash/files | cut -f 1 | sed -n '1p';

cd ~/.local/share/Trash/files

filelist=`ls ~/.local/share/Trash/files`	

for file in $filelist
	do
	if test -f $file
	then 
		echo deleting file: $file
		rm -rf $file
	fi
	if test -d $file
	then
		echo deleting dire:$file
		rm -rf $file
	fi	 
	done

echo done. 

 




