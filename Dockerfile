FROM node:12-alpine
WORKDIR /app
ADD package.json /app/package.json
RUN npm config set registry http://registry.npmjs.org
RUN npm install
ADD . /app
ADD start.sh /
EXPOSE 3000
CMD ["/start.sh"]