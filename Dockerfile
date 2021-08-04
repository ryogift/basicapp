FROM ruby:3.0.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /apps
ENV APP_ROOT /apps
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
ADD . $APP_ROOT
