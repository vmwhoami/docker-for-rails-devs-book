FROM ruby:3.0

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs

COPY . /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

# CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]


##  Add permissions to the app
#  sudo chown -R $USER:$USER .

#  tmp/pids/server.pid 