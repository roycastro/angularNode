FROM mhart/alpine-node:8

WORKDIR /app
COPY . .

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python
RUN npm install sails -g
RUN npm install 

EXPOSE 3000
RUN npm install -g @angular/cli
RUN npm start
