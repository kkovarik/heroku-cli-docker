FROM node:lts-slim

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh && rm -rf /var/lib/apt/lists/*

# install plugins
RUN heroku plugins:install heroku-repo

# list plugins
RUN heroku plugins

# heroku
CMD heroku
