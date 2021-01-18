FROM node:12.16-alpine

USER node

RUN mkdir /home/node/code

WORKDIR /home/node/code/

COPY package.json yarn.lock ./

RUN yarn 

COPY --chown=node:node . .

CMD ["node", "index.js"]
