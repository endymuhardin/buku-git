FROM node:alpine

RUN npm i -g markserv
COPY . /buku-git

WORKDIR /buku-git

ENTRYPOINT ["markserv", "-a", "0.0.0.0", "-p", "80"]
