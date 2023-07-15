# 使用基础镜像
FROM cloudreve/cloudreve:latest

# 创建目录和文件
mkdir -vp {uploads,avatar} 



# 暴露端口
EXPOSE 5212
# 启动 Cloudreve
CMD ["./cloudreve", "-c", "conf.ini"]

