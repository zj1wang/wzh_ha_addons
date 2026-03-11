#!/bin/bash

# 创建数据目录
mkdir -p ./data

# 启动V2rayA服务
docker-compose up -d

# 显示服务状态
docker-compose ps