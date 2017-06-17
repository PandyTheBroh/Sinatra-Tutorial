# myapp.rb
require "sinatra"
require 'sinatra/reloader'

configure do
  set :bind, "0.0.0.0"
  configure { set :server, :puma }
end

require 'sinatra'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end
