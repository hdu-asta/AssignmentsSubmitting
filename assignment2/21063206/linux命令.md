## linux命令的一些总结

### 终端命令

#### echo 与 > 、>>
打印变量，或直接输出指定的字符串。
`echo helloworld`在控制台打印"hello world"
`echo helloworld > 1.txt`在"1.txt"中打印"hello world"（覆盖）
`echo helloworld >> 1.txt`在"1.txt"中添加"hello world"（不覆盖）

**其他有输出结果的命令**
`ls >> 1.txt`
`greb abc 1.txt >> 2.txt`

**若> 、>> 后面是未创建的文件夹，则会创建一个新文件夹**

#### pwd
**print work directory**，输出当前所处的目录。

#### ls
**list**，列出**当前目录**所有的文件，蓝色代表文件夹，白色代表文件。如果文件中有空格，会加上单引号。
`ls -l` <=> `ll` 竖着列出文件，并列出最后修改日期、文件大小、用户名（组）、权限，还有总大小(total)（以字节显示、包含隐藏文件）
前两种方法不会列出隐藏文件
`ls -a` 显示隐藏文件（以' . '开头,创建隐藏文件只需在文件名前加个' . '即可)
`ls -l -a` 以 " ls -l " 的形式列出包括隐藏文件的所有文件，' . '和' .. ' 代表当前目录和上级目录
`ls -l -h` <=> `ls -lh` <=> `ls -hl`大小以KB来显示（l和h的顺序无所谓）

**关于通配符**
' * '代表任意多个（可以为零个）任意字符
`ls *.txt` 列出所有后缀为" .txt "的文件
`ls 1*` 列出所有以'1'开头的文件
`ls 1*.odt` 列出所有以 '1' 开头后缀为" .odt"的文件
' ? '代表一个任意字符
`ls ???.odt` 列出所有后缀为" .odt "且除后缀外有三个字符的文件
"[ ]"代表一个字符，该字符可以从"[ ]"中选择
`ls [1234]23.odt`
`ls [1234][234].odt`
`ls [a-z][1-4].odt` 必须是一串**连续**的字符，**闭区间**

**显示文件id**
`ls -i`/`ls -li`

#### cd
**change directory**，切换路径，进入某个**文件夹**（不能打开文件）。
注意大小写，如 Desktop
可以写多级路径，Ubuntu 中用正斜杠(' / ')隔开表示路径（ windows 是反斜杠隔开的）
可以通过上下方向键读取历史访问的文件夹
`cd ..` 返回上一级目录
`cd ../..` 返回上两级目录
`cd ./aa` 返回当前目录下的"aa"目录
`cd -` 返回上次所在的目录
`cd ~` <=> `cd` 返回个人主目录
`cd /home` 返回家目录
`cd /` 返回根目录

**相对目录**
`cd aa`

**绝对目录**
`cd /home/User/aa` 加个' / '表示在根目录下寻找

#### tab
**table**，进行 `cd` 操作时若文件夹名很长，可以输入前几个字母然后按下`tab`键，linux会自动搜寻目录。

#### cat
**concatenate**，功能是用于连接多个文件并且打印到屏幕输出或重定向到指定文件中。 
`cat 1.txt`展示"1.txt"的文件内容

#### more
和 cat 功能类似，也是展示文件内容，但是会**分页展示**

#### mkdir
**make directories**，创建一个目录。
文件夹和文件不能重名
`mkdir aa` 创建一个"aa"文件夹

**创建时不能在文件夹名中添加目录**

#### touch
创建一个文件（不能用于创建文件夹）。
`touch test.txt` 要加后缀
`touch .test.txt` 创建一个隐藏文件"test"

#### chmod
改变文件或目录权限。

**chmod八进制语法**
数字|权限|rwx|二进制
-|-|-|-
7|读+写+执行|rwx|111
6|读+写|rw-|110
5|读+执行|r-x|101
4|只读|r--|110
3|写+执行|-wx|011
2|只写|-w-|010
1|只执行|--x|001
0|无|---|000

三位数字分别代表**所有者的权限、用户组的权限、其他用户的权限**

#### rm
**remove**，移除一个或多个文件或目录。
`rm 1.txt` 移除"1.txt"文件
`rm -d aa` 移除"aa"目录（"aa"必须是空目录）
`rm -r aa` 移除"aa"目录（"aa"可以不为空）
`rm 1.txt 2.txt 3.txt` <=> `rm [1-3].txt` 删除多个文件
`rm -rf` 以递归的形式强制删除目录下所有文件
rm 也可用于移除隐藏文件

#### sudo
以另外一个用户身份（默认 root 用户）执行事先在 sudoers 文件允许的命令。

#### apt
APT 软件工具 ( Debian, Ubuntu 以及类似系统) 

#### mv
**move**，移动或重命名文件。
`mv 1.txt aa` <=> `mv 1.txt /home/User/aa` 将"1.txt"移动至"aa",相对、绝对路径都可
`mv aa bb` 将"aa"移动至"bb"文件夹
`mv 1.txt 2.txt` 将"1.txt"重命名为"2.txt"（若与文件夹重名则进行移动操作）
`mv 1 aa/2` 将"1"移动至"aa"目录并重命名为"2"

#### cp
**copy**，复制文件或目录。
`cp 1.txt aa` 将"1.txt"复制至"aa"（不会删除原文件）
`cp -r aa bb` 将"aa"目录复制至"bb"目录
`cp 1 aa/2` 将"1"复制至"aa"目录并重命名为"2"
`cp 1 2` 将"1"的内容复制至"2"

#### find
用于查找目录及目录下（子目录）的文件。
`find / -name s`在根目录下查找"s"
`find / -user user1`在根目录下查找属于"user1"的文件
`find / -name '1*'`在根目录下查找以'1'开头的文件
`find / -iname 'abc'`查找时忽略大小写
`find /home/user1 -name \*.bin`在目录 "/ home/user1" 中搜索带有".bin" 结尾的文件 
按文件大小查找
`find /home/user/desktop -size +1`查找"desktop"目录下大于一个**数据块**的文件（1个数据块 = 512 byte）
`find /home/user/desktop -size 7`查找大小在(6,7]范围内的文件
`find /home/user -mmin -5`5分钟内内容被更改的文件
`find /home/user -amin -5`5分钟内访问过的文件
`find /home/user -cmin -5`5分钟内属性被更改的文件
`find /home/user -name 'a*' -a -type f`查找以'a'开头的**文件**（`-a` => and ; `-o` => or)，若不加则默认为 -a

**通过id搜索**
`find /home/user -inum (文件id)`

#### locate
**find** 在文件比较多或者计算机性能差的时候查找速度比较慢，（一般是秒查的），所以一般要限制路径，可以采用 **locate**，**通过索引查找**，比较迅速，可以在根目录下搜
`locate abc` 输出包含"abc"的文件或路径
**索引库不会实时更新**（有一定周期），可以通过`sudo updatedb`手动更新

**由于现代计算机性能足够，所以不需要过多地依赖速度选择查找方式**

#### grep/egrep
在文件可视化 UI 下，可以通过`Ctrl+F`搜索内容
在 shell 中，可以通过过 **grep** 命令搜索
`grep abc 1.txt`在"1.txt"中搜索"abc"所在的行
`grep -n abc 1.txt`输出行号（空行也算行号）
`grep ^'#' /etc/services`搜索以'#'开头的
`grep s$ /etc/services`搜索以's'结尾的

**反向搜索**
`grep -v abc 1.txt`输出不包含"abc"的行 

#### tail
显示文件内容的尾部。

#### clear
清屏（终端）

#### which
查看某个命令的路径

#### 帮助手册
1. " 命令名 --help "
`rm --help` 查看 rm 的使用方法
2. " man 命令名 "
`man rm` 查看 rm 的使用方法，更加详细，会进入 `User Commands` 界面，按" q "退出

#### 管道
把一个命令的输出，通过管道连接，作为另一个命令的输入
`ls -lh | grep 125`

#### 作业
./a 当前目录下的文件夹"a"
ls ../a/b 打印上级目录下"a"目录中的"b"文件夹的文件
cd ~ 返回用户主目录  
chmod 777 /tmp/a.py 所有者、用户组、其他用户都可以读、写、执行"/tmp"目录下 a.py 文件
sudo rm -rf / 以管理员身份移除根目录下所有文件
cat ~/*/info.txt 在用户目录下所有子目录寻找 info.txt 并打印文件内容
cat 1.txt | grep good 在 1.txt 中搜索包含"good"的行

