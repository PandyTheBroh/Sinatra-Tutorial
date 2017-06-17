FROM ruby:latest
RUN gem install sinatra puma sinatra-contrib
CMD ruby /app/myapp.rb
