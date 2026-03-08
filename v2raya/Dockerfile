FROM mzz2017/v2raya:latest

# 添加健康检查
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:2017/api/system/status || exit 1

# 复制启动脚本
COPY run.sh /run.sh
RUN chmod +x /run.sh

# 暴露端口
EXPOSE 2017

# 设置工作目录
WORKDIR /root

# 启动命令
CMD ["/run.sh"]