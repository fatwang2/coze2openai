# 使用Node.js官方镜像作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制package.json和pnpm-lock.yaml（如果存在）
COPY package.json pnpm-lock.yaml* ./

# 安装pnpm
RUN npm install -g pnpm

# 设置npm和pnpm使用淘宝镜像源
RUN npm config set registry https://registry.npmmirror.com
RUN pnpm config set registry https://registry.npmmirror.com

# 安装依赖
RUN pnpm install

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 3000

# 启动应用
CMD ["pnpm", "start"]