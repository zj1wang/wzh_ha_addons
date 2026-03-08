FROM alpine:latest

RUN apk add --no-cache \
    curl \
    wget \
    unzip \
    supervisor \
    iptables \
    libcap

WORKDIR /opt

# 下载并安装V2Ray
RUN V2RAY_VERSION=$(curl -s https://api.github.com/repos/v2ray/v2ray-core/releases/latest | grep tag_name | cut -d '"' -f 4) && \
    wget https://github.com/v2ray/v2ray-core/releases/download/${V2RAY_VERSION}/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && \
    rm v2ray-linux-64.zip && \
    chmod +x v2ray v2ctl

# 下载并安装V2rayA
RUN V2RAYA_VERSION=$(curl -s https://api.github.com/repos/v2rayA/v2rayA/releases/latest | grep tag_name | cut -d '"' -f 4) && \
    wget https://github.com/v2rayA/v2rayA/releases/download/${V2RAYA_VERSION}/v2raya_linux_amd64.tar.gz && \
    tar -xzf v2raya_linux_amd64.tar.gz && \
    rm v2raya_linux_amd64.tar.gz && \
    chmod +x v2raya

# 配置supervisor
RUN mkdir -p /etc/supervisor/conf.d
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 配置V2rayA
RUN mkdir -p /etc/v2raya

# 复制运行脚本
COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 2017

CMD ["/run.sh"]