FROM ruby:latest

ADD Gemfile .
RUN bundle install

CMD ruby /app/myapp.rb
