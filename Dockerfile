# 基础镜像
FROM nginx
# author
LABEL maintainer.0=ruoyi maintainer.1=oscaner1997@gmail.com

# 挂载目录
VOLUME /home/ruoyi/projects/ruoyi-ui
# 创建目录
RUN mkdir -p /home/ruoyi/projects/ruoyi-ui
# 指定路径
WORKDIR /home/ruoyi/projects/ruoyi-ui
# 复制conf文件到路径
COPY ./devops/conf/nginx.conf /etc/nginx/nginx.conf
# 复制html文件到路径
COPY ./dist /home/ruoyi/projects/ruoyi-ui
