# Node version
FROM node:14-alpine

ENV PORT 8080
ENV HOST 0.0.0.0
ENV NODE_ENV production

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
COPY yarn.lock ./

RUN yarn install

# Bundle app source
COPY . .

RUN yarn build
EXPOSE 8080

CMD ["yarn", "start"]
