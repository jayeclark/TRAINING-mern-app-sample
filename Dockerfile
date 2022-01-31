FROM node:14

ENV PORT 3000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY client/package.json /usr/src/app
RUN npm install

# Copying source files
COPY client /usr/src/app

# Building app 
EXPOSE 3000

# Running the app
CMD "npm" "run" "start"