FROM mzz2017/v2raya:latest

# 安装必要的工具
RUN apk add --no-cache jq curl

# 创建配置目录
RUN mkdir -p /etc/v2raya /data/v2raya

# 复制启动脚本
COPY run.sh /run.sh
RUN chmod +x /run.sh

# 暴露端口
EXPOSE 2017 20170 20171 20172

ENTRYPOINT ["/run.sh"]