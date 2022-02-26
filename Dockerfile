FROM ruby:3.0

LABEL author="Vitalie Melnic"
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \nodejs
COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app/
RUN bundle install
COPY . /usr/src/app

CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]

# Add permissions to the app
# sudo chmod 755 -R .

# tmp/pids/server.pid Delete it

# Method to run rails server
# docker run -p 3000:3000 docker-rails:v1 bin/rails s -b 0.0.0.0