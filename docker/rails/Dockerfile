FROM --platform=linux/arm64/v8 ruby:3.2.0

WORKDIR /app

COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock

RUN bundle install
