#!/usr/bin/env bash
set -e

echo "[Info] Starting v2rayA with Ingress support..."

# 定义配置目录（持久化）
CONF_DIR="/config/v2raya"
mkdir -p "$CONF_DIR"

# 运行 v2rayA
# 注意：--v2raya-address 必须监听 0.0.0.0 以允许 HA 内部转发
# 如果你使用 Ingress，v2rayA 官方镜像通常能自动处理相对路径
# 如果页面显示空白，可以尝试增加参数 --v2raya-webdir
/usr/bin/v2raya \
    --v2raya-confdir "$CONF_DIR" \
    --v2raya-address "0.0.0.0:2017" \
    --v2raya-log-level "info"
