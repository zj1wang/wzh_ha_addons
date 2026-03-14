# 引用官方多架构镜像
FROM mzz2017/v2raya:latest

# 安装必要依赖：bash (运行脚本), ca-certificates (证书), iproute2/iptables (网络管理)
RUN apk add --no-cache \
    bash \
    ca-certificates \
    iptables \
    ip6tables \
    iproute2

# 拷贝启动脚本
COPY run.sh /
RUN chmod a+x /run.sh

# v2rayA 默认端口
EXPOSE 2017 1080 1088

CMD [ "/run.sh" ]