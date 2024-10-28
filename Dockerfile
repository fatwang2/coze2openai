# 使用Node.js官方镜像作为基础镜像
FROM node:18-alpine

# 设置环境变量配置镜像源
ENV NPM_CONFIG_REGISTRY=https://registry.npmmirror.com/
ENV PNPM_REGISTRY=https://registry.npmmirror.com/

# 设置工作目录
WORKDIR /app

# 复制package.json和pnpm-lock.yaml（如果存在）
COPY package.json pnpm-lock.yaml* ./

# 安装pnpm
RUN npm install -g pnpm

# 安装依赖
RUN pnpm install

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 3000

# 启动应用
CMD ["pnpm", "start"]