FROM node:16

WORKDIR /app

COPY package*.json .

RUN npm install

# Make sure you install nodemon and express
RUN npm install -g nodemon

COPY . .

EXPOSE 9025

VOLUME [ "/app/node_modules" ]

CMD ["npm", "run", "dev"]
