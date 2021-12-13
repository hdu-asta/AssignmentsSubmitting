#!/bin/bash
echo "clean up Trash immediately:"
for var in $(ls ~/.local/share/Trash/files)
do
	echo "having deleted: $var"
done
rm -rf ~/.local/share/Trash/files
