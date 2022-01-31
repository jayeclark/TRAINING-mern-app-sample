FROM node:14

ENV PORT 8080

# Create app directory
RUN mkdir -p /usr/src/server
WORKDIR /usr/src/server

# Installing dependencies
COPY package.json /usr/src/server
RUN npm install

# Copying source files
COPY . /usr/src/server

EXPOSE 8080

# Running the app
CMD "npm" "run" "start"