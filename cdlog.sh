#!/bin/bash
# cd履歴を記録するcdラップスクリプト

logfile=~/.cd_history

if [ $# -eq 0 ]; then
    # cd引数なしの場合(ホームに移動)
    builtin cd
    pwd >> $logfile
elif [ $# -eq 1 ]; then
    # cd引数ありの場合
    dir=$1
    builtin cd $dir
    pwd >> $logfile
else
    # NG
    :
fi
