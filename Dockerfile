FROM node:20

ENV NG_CLI_ANALYTICS false

RUN apt-get update \
    && npm i -g npm \
    && npm install -g @angular/cli 

# ng new myapp --routing --skip-git --skip-tests --style scss --directory .
# rm .gitignore README.md

WORKDIR /app

COPY ./src /app

RUN npm i

EXPOSE 4200

CMD npm run ng -- serve --host 0.0.0.0
