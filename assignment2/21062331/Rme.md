# Explanation
### ./a     
本目录中的一个文件夹
### ls ../a/b     
列出来上一个文件夹中a文件夹中的b文件夹内容    
### cd ~
返回/home/user这个地方,即默认的wd.
### sudo rm -rf /
删库跑路命令
### cat ~/*/info.txt
连接使用cd ~后user里文件夹里info.txt和一个空txt 即查看info.txt
### cat 1.txt | grep good
我认为,in my opinion,as far as i know,as far as i am concerned,其实就是grep good 1.txt
### cat 1.txt 2>/dev/null || touch 2(选做)
打开1.txt,如果不存在1.txt不会报错,创建一个名叫2的txt.
通过选做此题,我认为清理回收站可以用到,但是暂时没有很好的方法,暂时先隔着.
