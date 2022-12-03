\#! /bin/zsh



\## 组件库目录,若不需要填null

root_dir=$HOME/work/library

\## 主工程目录,若不需要填null

main_dir=$HOME/work/app



function log_i(){

​    if [ "/bin/zsh" = "`ps -o comm= $$`" ] ; then

​        echo -e "\e[1;32m $(date "+%H:%M:%S") -> $* \e[0m"

​    else 

​        echo -e "\033[1;32m $(date "+%H:%M:%S") -> $* \033[0m"

​    fi

}

function log_e(){

​    if [ "/bin/zsh" = "`ps -o comm= $$`" ] ; then

​        echo -e "\e[1;31m $(date "+%H:%M:%S") -> $* \e[0m"

​    else 

​        echo -e "\033[1;31m $(date "+%H:%M:%S") -> $* \033[0m"

​    fi

}



function git_count_all(){

​    if [ ! -d "$1" ] ; then

​        echo "请指定rootdir"

​        return

​    fi

​    echo ""

​    local dir=$1

​    local author=$2

​    local start_date=$3

​    local end_date=$4

​    if [ ! -n "$start_date" ] ;then

​        if [ "Darwin" = "`uname`" ] ; then

​            start_date=`date -v-5d +"%Y-%m-%d"`

​        else

​            start_date=`date -d"-5day" +"%Y-%m-%d"`

​        fi

​    fi

​    if [ ! -n "$end_date" ] ;then

​        end_date=`date "+%Y-%m-%d"`

​    fi

​    local add=0

​    local removed=0

​    local index=0

​    if [ -d $main_dir ] ;then

​        local txt=`git -C $main_dir log --author=$author --since=$start_date --until=$end_date --pretty=tformat: --numstat`

​        local result=`echo "$txt" | awk '{ add += $1; subs += $2 } END { printf "%s %s", add, subs }'`

​        local tmp1=`echo "$result" | awk '{printf $1}'`

​        local tmp2=`echo "$result" | awk '{printf $2}'`

​        add=`expr $add + $tmp1`

​        removed=`expr $removed + $tmp2`

​        if [ $tmp1 -gt 0 ] || [ $tmp2 -gt 0 ] ; then

​            index=`expr $index + 1`

​            local itmp=`echo $index | awk '{printf("%02d\n",$0)}'`

​            local branch=`git -C $main_dir symbolic-ref -q --short HEAD`

​            log_i $itmp  ${main_dir##*/} "," $branch "," $result

​        fi

​    fi

​    for file in $dir/*; do

​        if [ -d $file ] ; then

​            local txt=`git -C $file log --author=$author --since=$start_date --until=$end_date --pretty=tformat: --numstat`

​            local result=`echo "$txt" | awk '{ add += $1; subs += $2 } END { printf "%s %s", add, subs }'`

​            local tmp1=`echo "$result" | awk '{printf $1}'`

​            local tmp2=`echo "$result" | awk '{printf $2}'`

​            add=`expr $add + $tmp1`

​            removed=`expr $removed + $tmp2`

​            if [ $tmp1 -gt 0 ] || [ $tmp2 -gt 0 ] ; then

​                index=`expr $index + 1`

​                local itmp=`echo $index | awk '{printf("%02d\n",$0)}'`

​                log_i  $itmp  ${file##*/}  "," $result

​            fi

​        else

​           log_e $file 不是文件夹或不存在

​        fi

​    done

​    echo ""

​    log_e author=$author,start=$start_date,end=$end_date

​    log_i add lines : $add , removed lines : $removed , total : `expr $add + $removed`

​    echo ""

}



case $1 in

​    "user")

​        git_count_all $root_dir $2 $3 $4 ;;

​    *)

​        git_count_all $root_dir `git config --global user.name` $1 $2 ;;

esac