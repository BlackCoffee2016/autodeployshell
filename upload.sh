#!/bin/bash

# 上传jar包到远程服务器
#
# 参数：
# $1 进程UUID
# $2 finalName

echo '> ssh 1.1.1.10 -l root -i /wucao/auto_deploy/pem/10_26.pem "rm /home/kzhd/auto_deploy/'$1'/* \n> mkdir -p /home/kzhd/auto_deploy/'$1
ssh 1.1.1.10 -l root -i /wucao/auto_deploy/pem/10_26.pem "rm /home/kzhd/auto_deploy/$1/*
mkdir -p /home/kzhd/auto_deploy/$1"

echo '> scp -i /wucao/auto_deploy/pem/10_26.pem /wucao/auto_deploy/temp/'$1'/target/'$2'.jar root@1.1.1.10:/home/kzhd/auto_deploy/'$1'/'$2'.jar'
scp -i /wucao/auto_deploy/pem/10_26.pem /wucao/auto_deploy/temp/$1/target/$2.jar root@1.1.1.10:/home/kzhd/auto_deploy/$1/$2.jar