#!/bin/bash

# 设置环境变量
export V2RAYA_LOG_LEVEL=${V2RAYA_LOG_LEVEL:-info}
export V2RAYA_CONFIG=${V2RAYA_CONFIG:-/config}

# 创建配置目录
mkdir -p $V2RAYA_CONFIG

# 启动v2raya服务
echo "Starting v2raya service..."
/usr/local/bin/v2raya -l 0.0.0.0:2017