FROM ruby:latest
RUN gem install sinatra thin
CMD ruby /app/myapp.rb
