#!/bin/bash

# 登录服务器，kill进程
#
# 参数：
# $1 进程UUID（推荐）或finalName（不推荐）
# $2 是否强制kill（kill -9）

if [ $2 = "true" ] ; then
    echo '> ssh 1.1.1.10 -l root -i /wucao/auto_deploy/pem/10_26.pem  "> ps -ef | grep '$1' | grep -v grep | cut -c 9-15 | xargs kill -9"'
    ssh 1.1.1.10 -l root -i /wucao/auto_deploy/pem/10_26.pem "ps -ef | grep $1 | grep -v grep | cut -c 9-15 | xargs kill -9"
else
    echo '> ssh 1.1.1.10 -l root -i /wucao/auto_deploy/pem/10_26.pem  "ps -ef | grep '$1' | grep -v grep | cut -c 9-15 | xargs kill"'
    ssh 1.1.1.10 -l root -i /wucao/auto_deploy/pem/10_26.pem "ps -ef | grep $1 | grep -v grep | cut -c 9-15 | xargs kill"
fi