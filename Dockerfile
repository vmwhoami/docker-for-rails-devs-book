FROM ruby:3.0

LABEL author="Vitalie Melnic"
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \apt-transport-https

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN apt-get update && apt-get install -y nodejs yarn postgresql-client

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app/
RUN bundle install
COPY . /usr/src/app

CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]


##  Add permissions to the app
#  sudo chown -R $USER:$USER .

#  tmp/pids/server.pid 