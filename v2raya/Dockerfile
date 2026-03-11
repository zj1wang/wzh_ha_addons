FROM mzz2017/v2raya:latest

# 创建addon_config目录并设置符号链接
RUN mkdir -p /data && \
    rm -rf /etc/v2raya && \
    ln -s /data /etc/v2raya

EXPOSE 2017

