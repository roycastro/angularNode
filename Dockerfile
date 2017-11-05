FROM mhart/alpine-node:8

WORKDIR /app
COPY . .

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python
RUN npm install sails -g
RUN npm install 

EXPOSE 4200 49153
RUN npm install -g @angular/cli
RUN npm i angular4-slimscroll --save
RUN npm install ng2-track-scroll --save
npm install ngc-float-button --save

VOLUME /app/src
CMD [ "npm", "start" ]

