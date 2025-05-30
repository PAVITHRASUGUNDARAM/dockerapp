# Dockerfile
FROM node:18

WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Serve build folder
RUN npm install -g serve
CMD ["serve", "-s", "build", "-l", "80"]
