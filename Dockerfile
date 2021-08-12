FROM ruby:3.0.2

RUN wget https://dl.yarnpkg.com/debian/pubkey.gpg && apt-key add pubkey.gpg && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

RUN mkdir /apps
ENV APP_ROOT /apps
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN yarn install && bundle install
ADD . $APP_ROOT
