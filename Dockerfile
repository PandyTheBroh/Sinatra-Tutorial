FROM ruby:latest
RUN gem install sinatra
CMD ruby /app/myapp.rb
