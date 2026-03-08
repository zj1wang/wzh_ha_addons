#!/bin/sh

# 创建必要的目录
mkdir -p /etc/v2raya
mkdir -p /var/log/v2raya

# 生成默认的V2Ray配置文件
cat > /etc/v2raya/v2ray.json << EOF
{
  "log": {
    "access": "/var/log/v2raya/access.log",
    "error": "/var/log/v2raya/error.log",
    "loglevel": "warning"
  },
  "inbounds": [
    {
      "port": 1080,
      "protocol": "socks",
      "settings": {
        "auth": "noauth",
        "udp": true
      }
    },
    {
      "port": 1081,
      "protocol": "http",
      "settings": {
        "auth": "noauth"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "settings": {}
    }
  ]
}
EOF

# 启动supervisord
exec supervisord -c /etc/supervisor/conf.d/supervisord.conf