#!/bin/bash

# 编译docker环境, 创建tag标签为rknn-x86的docker容器
sudo docker build \
  --tag rknn-x86 \
  --file Dockerfile_ubuntu_18_04_for_cp36 .

# 看到Successfully built d99182931465
#    Successfully tagged rknn-x86:latest

# 到处镜像到本地
sudo docker save -o rknn-x86 rknn-x86:latest

# 然镜像跑起来，此时可以才看到CONTAINER ID
sudo docker run -itd  rknn-x86:latest /bin/bash

#进入镜像
sudo docker run -it rknn-x86:latest /bin/bash




