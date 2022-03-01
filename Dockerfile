FROM ruby:3.0

LABEL author="Vitalie Melnic"
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \apt-transport-https

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | \tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \nodejs \yarn
COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app/
RUN bundle install
COPY . /usr/src/app

CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]
