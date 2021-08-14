FROM ruby:3.0.2

RUN wget https://dl.yarnpkg.com/debian/pubkey.gpg && apt-key add pubkey.gpg && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

WORKDIR /basicapp
COPY ./Gemfile /basicapp/Gemfile
COPY ./Gemfile.lock /basicapp/Gemfile.lock

RUN yarn install && bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
