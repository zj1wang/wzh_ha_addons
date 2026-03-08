FROM mzz2017/v2raya:latest

# 设置环境变量
ENV V2RAYA_LOG_FILE=/tmp/v2raya.log
ENV V2RAYA_V2RAY_BIN=/usr/local/bin/v2ray
ENV V2RAYA_NFTABLES_SUPPORT=off
ENV IPTABLES_MODE=legacy

# 创建必要的目录
RUN mkdir -p /etc/v2raya /var/log/v2raya

# 复制启动脚本
COPY run.sh /run.sh
RUN chmod +x /run.sh

# 暴露端口
EXPOSE 2017 20170 20171 20172

ENTRYPOINT ["/run.sh"]