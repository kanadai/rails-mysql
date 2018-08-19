FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-mysql
WORKDIR /rails-mysql
ADD Gemfile /rails-mysql/Gemfile
ADD Gemfile.lock /rails-mysql/Gemfile.lock
RUN bundle install
ADD . /rails-mysql
