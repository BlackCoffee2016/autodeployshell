#!/bin/bash

# 查看日志
#
# 参数：
# $1 进程UUID

ssh 1.1.1.10 -l root -i /wucao/auto_deploy/pem/10_26.pem "tail -n 500 /home/kzhd/auto_deploy/$1/nohup.out"