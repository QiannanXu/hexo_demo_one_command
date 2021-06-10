FROM node:12.18.3

RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /app
COPY package.json /app/package.json

RUN yarn global add hexo-cli
RUN yarn install

COPY . /app

EXPOSE 4000

CMD hexo server