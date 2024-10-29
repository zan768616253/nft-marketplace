FROM node:20-alpine

WORKDIR /app

COPY package.json ./

RUN npm install --force

COPY . .

RUN chmod +x /app/start.sh

# Expose necessary ports
EXPOSE 8545 3000

ENTRYPOINT ["/app/start.sh"]