# myapp.rb
require 'sinatra'
configure do
  set :bind, "0.0.0.0"
end

get '/' do
  'Hello world!'
end

post '/' do
  'Hello world! since a POST'
end

put '/' do
  'Hello world! since a PUT'
end

delete '/' do
  'Hello world! since a DELETE'
end

patch '/' do
  'Hello world! since a PATCH'
end

options '/' do
  'Hello world! since a OPTIONS'
end
