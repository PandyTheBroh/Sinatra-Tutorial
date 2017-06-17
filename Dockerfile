FROM ruby:latest
RUN gem install sinatra puma sinatra-contrib sqlite3 data_mapper dm-sqlite-adapter
CMD ruby /app/myapp.rb
