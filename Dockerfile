FROM ruby:2.5.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN bundle config --global frozen 1

COPY . /usr/src/app
RUN bundle install --without development test --jobs 5

CMD bundle exec ruby config.ru
