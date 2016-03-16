#!/bin/bash

# SVN检出并Maven打包
#
# 参数：
# $1 进程UUID
# $2 SVN地址
# $3 profile

echo '> rm -rf /wucao/auto_deploy/temp/'$1
rm -rf /wucao/auto_deploy/temp/$1

echo '> mkdir -p /wucao/auto_deploy/temp/'$1
mkdir -p /wucao/auto_deploy/temp/$1

echo '> cd /wucao/auto_deploy/temp/'$1
cd /wucao/auto_deploy/temp/$1

echo '> svn checkout '$2' .'
svn checkout $2 .

echo '> mvn clean package -P'$3
mvn clean package -P$3