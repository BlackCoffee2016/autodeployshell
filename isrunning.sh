#!/bin/bash

# 登录服务器，查看进程是否正在运行
#
# 参数：
# $1 进程UUID（推荐）或finalName（不推荐）

ssh 10.230.10.26 -l root -i /wucao/auto_deploy/pem/10_26.pem  "ps -ef | grep $1 | grep -v grep"