FROM node:14-alpine

# ENV APP_ROOT /web
# ENV NODE_ENV production

ENV HOST 0.0.0.0

# WORKDIR ${APP_ROOT}
ADD . .

# Create app directory
# WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./

RUN npm install
# RUN npm i @nuxt/typescript-build
RUN npm run build
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
# COPY . .

EXPOSE 12345
# CMD [ "node", "server.js" ]
# CMD ["npm", "run start"]
CMD ["npm", "run", "start"]