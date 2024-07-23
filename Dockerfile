From node:20-alpine
WORKDIR /app
copy package*.json .
copy tsconfig*.json .

RUN npm install

COPY . .
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]