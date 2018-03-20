#!/bin/bash
source ./test2.sh
i=1
for file_name in `ls /home/huang/shell_script`; do
#for skill in hehe nihao world,for遍历要加do和done,done在哪表示在哪结束循环,双引号可以添加变量
	echo "文件名${i}:${file_name}"
	#自增
	let i++
done
array=('hello' 'world' 'huang1')

#截取数组
echo ${array:0:14}

for s in ${array[*]}; do
	if [ $s != null ];then
	echo  "遍历:${s}"
fi
done

for l in {'xue','xi'}; do
	echo $l
done

#for用来循环列表直至结束，while是带判断条件的循环
declare -i i
i=1
while(($i<=5));do
	echo $i
	let i++
done

#for((j<5;j=1;j++));do
#	echo $j
#done

#case与esac
echo "请输入1~5之间的数字:"
read num
case $num in
	1) echo '你选择了1'
		break
		;;
	2) echo '你选择了2'
		;;
	3) echo '你选择了3'
		;;
	4) echo '你选择了4'
		;;
	5) echo '你选择了5'
		;;
	esac

#打印匿名对象
echo "打印匿名对象:" {7,8,9}
echo "${str},welcome"

#使用unset删除变量
unset str
echo "删除变量str,${str}"

#shell数组
array=(1,2,'huang')
echo "${array[@]}"
#cd /home/huang/software

#提取子字符串
str='hello world'
echo ${str:1:6}

#获取字符串长度
echo ${#str}

#获取数组长度
length=${#array[@]}
echo ${length}

protoc --version

#输出结果定向到文件
echo "第二次输出结果到文件:${array[@]}">>./input_file

#显示命令执行结果,命令使用反引号``
echo -e `date` "\n" `uname -a`    #启用转义字符

#读取一行的输入参数
#read name
#echo "获取一行的输入:${name}"

#使用函数
function test_func(){
age1=$[2*3]
#age2=24
echo "第一个参数 ${1}"
echo "第二个参数 ${2}"
echo "第三个参数 ${3}"
echo "第四个参数 ${4}"
echo "第五个参数 ${5}"
echo "第六个参数 ${6}"
echo "第七个参数 ${7}"
echo "第八个参数 ${8}"
echo "第九个参数 ${9}"
echo "第十个参数 ${10}"
echo "总的参数个数是: $#"
#return $[age1]+$[age2]
return $age1
}
test_func 1 2 3 4 5 6 7 8 9 10
echo "和是: $?"

echo '执行命令'
#执行命令
mkdir test_file_fold>/dev/null

#格式化输出
printf "this is a string: %s \n" "hello"

#带宽度与对齐方式的格式化
printf "%-10s %-8s %-4s\n" 姓名 性别    体重kg
printf '%-10s %-8s %-4.3f\n' 黄ze 男     65    	#单引号与双引号在这里一样
printf "%-10s %-8s %-4.3f\n" 白baobao 女 60

#使用判断与循环

#bash运算符
#表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2
result=`expr 3 - 1`
echo "运算符运算结果是: ${result}"


#条件表达式要放在方括号之间，并且要有空格，例如: [$a==$b] 是错误的，必须写成 [ $a == $b ]。
#shell 的 expr 语法是：$((表达式))

#执行命令
grep -c echo ./test.sh

s=$((1+5*3))
echo $s

#打印当前进程号
echo "当前进程号"$$
#打印退出状态
echo $?

#将输出当做数组
array2=$(ls ./)
echo $array2

#获取信号量
clean ()
{
 kill -QUIT redis
}

trap clean 1
  
#RC=0  
#while [ $RC -eq 0 ]  
#do  
#	    redis 
#	    RC=$?  
#    done 

#arr=$(cat ./input_file)
#echo $arr

for v in $(ls ./);do
	echo $v
done
