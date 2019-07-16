FROM node:12.5.0-stretch

# install simple http server for serving static content
RUN yarn global add http-server

# make good folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY herkules/package*.json ./

# CLI
RUN yarn global add @vue/cli
RUN yarn global add @vue/cli-service-global


# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY ./herkules/src .

COPY ./herkules/package.json .
RUN cat package.json
# install project dependencies
RUN yarn install

#RUN yarn global add eslint-loader@2.1.2

# build app for production with minification
#RUN vue build

EXPOSE 8080
CMD [ "http-server", "dist" ]
