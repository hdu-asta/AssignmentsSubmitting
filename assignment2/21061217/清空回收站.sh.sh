#!/bin/bash
for x in $(ls ~/.local/share/Trash/files);
do
	echo "$x\n"
done
rm rf- $Home/.local/share/Trash/files
