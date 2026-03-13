#!/usr/bin/env bash
set -e

echo "Starting v2rayA..."

# v2rayA 默认会在 /etc/v2raya 存储数据
# 我们需要确保数据持久化在 /config 目录下（HA 的持久化路径）
V2RAYA_CONFIG="/config/v2raya"
mkdir -p "$V2RAYA_CONFIG"

# 运行 v2rayA
# --v2raya-confdir 指定配置文件路径
/usr/bin/v2raya \
    --v2raya-confdir "$V2RAYA_CONFIG" \
    --v2raya-address 0.0.0.0:2017
