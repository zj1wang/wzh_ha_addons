#!/usr/bin/env bash
set -e

echo "[Info] 正在启动 v2rayA 加载项..."

# 1. 设置配置目录
# HA 的插件持久化建议放在 /config 目录下新建文件夹
CONF_DIR="/config/v2raya"

if [ ! -d "$CONF_DIR" ]; then
    echo "[Info] 首次运行，正在创建配置目录: $CONF_DIR"
    mkdir -p "$CONF_DIR"
fi

# 2. 检查并清理旧的 PID 文件（防止非正常关机导致的启动失败）
if [ -f "$CONF_DIR/v2raya.pid" ]; then
    rm -f "$CONF_DIR/v2raya.pid"
fi

# 3. 运行 v2rayA
# --v2raya-confdir: 核心，确保配置不丢失
# --v2raya-address: 必须设为 0.0.0.0 才能让 Ingress 访问
echo "[Info] 启动主程序..."
exec /usr/bin/v2raya \
    --v2raya-confdir "$CONF_DIR" \
    --v2raya-address "0.0.0.0:2017" \
    --v2raya-log-level "$(bashio::config 'log_level' || echo 'info')"