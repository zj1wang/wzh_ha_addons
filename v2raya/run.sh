#!/usr/bin/env bashio

# 读取配置
V2RAY_BIN=$(bashio::config 'v2ray_bin')
NFTABLES_SUPPORT=$(bashio::config 'nftables_support')
IPTABLES_MODE=$(bashio::config 'iptables_mode')
LOG_FILE=$(bashio::config 'log_file')

# 设置环境变量
export V2RAYA_V2RAY_BIN="${V2RAY_BIN}"
export V2RAYA_LOG_FILE="${LOG_FILE}"
export V2RAYA_NFTABLES_SUPPORT="${NFTABLES_SUPPORT}"
export IPTABLES_MODE="${IPTABLES_MODE}"

# 创建必要的目录
mkdir -p /etc/v2raya
mkdir -p /data/v2raya

# 如果存在/data/v2raya目录，创建符号链接
if [ -d /data/v2raya ]; then
    ln -sf /data/v2raya /etc/v2raya
fi

bashio::log.info "Starting V2rayA..."
bashio::log.info "V2Ray binary: ${V2RAYA_V2RAY_BIN}"
bashio::log.info "Log file: ${V2RAYA_LOG_FILE}"
bashio::log.info "Nftables support: ${V2RAYA_NFTABLES_SUPPORT}"
bashio::log.info "Iptables mode: ${IPTABLES_MODE}"

# 启动v2rayA
exec /usr/bin/v2raya