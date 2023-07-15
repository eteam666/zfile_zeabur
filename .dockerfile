# 使用基础镜像
FROM ubuntu:latest

# 将 Cloudreve 主程序复制到容器中
COPY cloudreve_3.8.0_linux_amd64.tar.gz /app/

# 在容器中解压主程序
RUN tar -zxvf /app/cloudreve_3.8.0_linux_amd64.tar.gz -C /app/

# 设置工作目录
WORKDIR /app

# 赋予执行权限
RUN chmod +x /app/cloudreve

# 暴露端口
EXPOSE 80

# 启动 Cloudreve
CMD ["/app/cloudreve"]
