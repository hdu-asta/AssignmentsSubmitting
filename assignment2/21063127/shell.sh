#!/bin/bash
for i in $(ls ~/.local/share/Trash/files);do
	echo -e "$i\n"
done
dir=~/.local/share/Trash/files
for i in $dir/*;do
	rm -rf $i
done

