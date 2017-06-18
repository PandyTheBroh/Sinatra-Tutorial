# myapp.rb
require "sinatra"
require 'sinatra/reloader'
require_relative 'songs'

configure do
  set :bind, "0.0.0.0"
  configure { set :server, :puma }
end

get '/' do
  @songs = Song.all(order: :id.desc)
  @title = 'All Songs'
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/new_song' do
  @songs = Song.all(order: :id.desc)
  @title = 'All Songs'
  erb :new_song
end

post '/new_song' do
  n = Song.new
  n.title = params[:title]
  n.duration = params[:duration]
  n.release_date = Date.parse params[:release_date]
  n.save
  redirect '/'
end
