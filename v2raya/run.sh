#!/bin/sh

# 读取配置
V2RAY_BIN=$(jq -r '.v2ray_bin // "/usr/local/bin/v2ray"' /data/options.json)
NFTABLES_SUPPORT=$(jq -r '.nftables_support // false' /data/options.json)
IPTABLES_MODE=$(jq -r '.iptables_mode // "legacy"' /data/options.json)
LOG_FILE=$(jq -r '.log_file // "/tmp/v2raya.log"' /data/options.json)

# 设置环境变量
export V2RAYA_V2RAY_BIN="${V2RAY_BIN}"
export V2RAYA_LOG_FILE="${LOG_FILE}"
export V2RAYA_NFTABLES_SUPPORT="${NFTABLES_SUPPORT}"
export IPTABLES_MODE="${IPTABLES_MODE}"

# 创建必要的目录
mkdir -p /etc/v2raya
mkdir -p /var/log/v2raya

# 挂载必要的系统文件（如果存在）
if [ -f /etc/resolv.conf ]; then
    echo "resolv.conf found"
fi

# 启动v2rayA
echo "Starting V2rayA..."
echo "V2Ray binary: ${V2RAYA_V2RAY_BIN}"
echo "Nftables support: ${V2RAYA_NFTABLES_SUPPORT}"
echo "Iptables mode: ${IPTABLES_MODE}"

exec /usr/bin/v2raya