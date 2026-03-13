# 使用官方镜像作为基础
FROM m0w3/v2raya:latest

# 安装 bash 以运行脚本
RUN apk add --no-cache bash

# 拷贝启动脚本
COPY run.sh /
RUN chmod a+x /run.sh

# 暴露端口（即使开启了 Ingress，内部端口仍需对应）
EXPOSE 2017

CMD [ "/run.sh" ]
