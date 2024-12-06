FROM node:18

WORKDIR /usr/src/app

ENV HOST 0.0.0.0

COPY package*.json ./

RUN npm install --only=prod

COPY . .

ENV PORT=3000

ENV MODEL_URL='https://storage.googleapis.com/mlgc-saskya-bucket/model.json'

EXPOSE 3000

CMD ["npm", "start"]
