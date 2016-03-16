#!/bin/bash

# 启动程序
#
# 参数：
# $1 进程UUID
# $2 finalName
# $3 params

echo '> ssh 10.230.10.26 -l root -i /wucao/auto_deploy/pem/10_26.pem "nohup java -jar /home/kzhd/auto_deploy/'$1'/'$2'.jar '$3' > /home/kzhd/auto_deploy/'$1'/nohup.out 2>&1 &"'
ssh 10.230.10.26 -l root -i /wucao/auto_deploy/pem/10_26.pem "nohup java -jar /home/kzhd/auto_deploy/$1/$2.jar $3 > /home/kzhd/auto_deploy/$1/nohup.out 2>&1 &"