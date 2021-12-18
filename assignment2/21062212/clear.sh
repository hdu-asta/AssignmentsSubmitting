#!/bin/bash
echo 即将清空回收站.....
for a in $(ls ~/.local/share/Trash/*);
do
    if [ -f  $a ];
    then
        echo  "已删除文件 $a";
    else
        echo "已删除文件夹 $a";
    fi
done
rm -r ~/.local/share/Trash/*;
echo 回收站已经被清空
