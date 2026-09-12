FROM node:20

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
COPY package.json package-lock.json /app/
RUN npm ci

# Bundle app source
COPY . /app

EXPOSE 3000
CMD [ "npm", "start" ]