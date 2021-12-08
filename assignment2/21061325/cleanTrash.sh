#!/bin/bash
echo "即将清空回收站..."
for var in $(ls ~/.local/share/Trash/files)
do
	echo "已删除：$var"
done
rm -fr $HOME/.local/share/Trash/files/