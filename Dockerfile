# 使用官方Node.js的Docker镜像作为基础镜像
FROM node:14-alpine

# 设置工作目录
WORKDIR /usr/src/app

# 复制package.json和package-lock.json到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 暴露端口，如果项目使用的是3000端口，则保持不变
EXPOSE 3000

# 定义环境变量，这里需要根据实际情况设置
ENV NODE_ENV=production
ENV COZE_API_KEY=pat_gOllUbdnXVFwRq48K7qQ8KwCMkdDV6G8jL1tZgrU7HxgkE4shaAlghe7eQJTFzI7
ENV BOT_ID=7337201579969314825
ENV COZE_API_BASE=api.coze.cn
# 如果有其他环境变量，也在这里设置

# 启动应用的命令，这里使用npm start
CMD ["npm", "start"]