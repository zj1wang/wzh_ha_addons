ARG BUILD_FROM=m0w3/v2raya:latest
FROM $BUILD_FROM

# 安装 Home Assistant Add-on 需要的工具（如 bash）
RUN apk add --no-cache bash curl

# 拷贝启动脚本
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
