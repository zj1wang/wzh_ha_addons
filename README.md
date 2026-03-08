# WZH Home Assistant Add-ons

这是一个Home Assistant加载项仓库，包含V2rayA等工具。

## 安装方法

1. 打开Home Assistant的**设置** -> **加载项** -> **加载项商店**
2. 点击右上角菜单，选择**仓库**
3. 添加此仓库的URL：
   ```
   https://github.com/yourusername/wzh_ha_addons
   ```
4. 点击**添加**，然后关闭对话框
5. 在加载项商店中找到并安装V2rayA

## 加载项列表

### V2rayA

V2rayA是一个现代化的V2Ray Web GUI客户端，提供友好的图形界面来管理V2Ray代理。

#### 功能特点

- 基于官方Docker镜像 `mzz2017/v2raya`
- 内置V2Ray/Xray核心，无需单独安装
- 现代化的Web界面
- 支持多种代理协议（VMess、VLESS、Trojan、Shadowsocks等）
- 支持路由规则配置
- 支持透明代理

#### 配置选项

| 选项 | 描述 | 默认值 |
|------|------|--------|
| v2ray_bin | V2Ray核心路径 | /usr/local/bin/v2ray |
| nftables_support | 是否启用nftables支持 | false |
| iptables_mode | iptables模式 (legacy/nftables) | legacy |
| log_file | 日志文件路径 | /tmp/v2raya.log |

#### 使用方法

1. 安装并启动V2rayA加载项
2. 访问 `http://<你的Home Assistant IP>:2017`
3. 首次使用需要设置管理员密码
4. 在Web界面中添加服务器配置
5. 启动代理服务

#### 端口说明

- **2017**: V2rayA Web管理界面
- **20170**: SOCKS5代理端口
- **20171**: HTTP代理端口
- **20172**: 透明代理端口

#### 注意事项

- 加载项使用主机网络模式，确保网络连接正常
- 配置文件保存在 `/config/v2raya/` 目录
- 需要privileged权限以支持透明代理功能

## 支持的架构

- amd64
- aarch64 (ARM64)
- armv7

## 问题反馈

如有问题，请在GitHub Issues中提交。

## 许可证

MIT License