
FROM openjdk:8-jdk-alpine

# 安装字体工具（阿里云镜像源有效）
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk add --no-cache fontconfig ttf-dejavu && \
    fc-cache -fv
RUN apk add --no-cache wget

WORKDIR /app
COPY ruoyi-admin.jar /app/ruoyi.jar
EXPOSE 8082
CMD ["java", "-jar", "ruoyi.jar"]ar"]