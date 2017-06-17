require 'dm-core'
require 'dm-migrations'
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/music.db")

class Songs
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :duration, Integer
  property :release_date, Date
end
DataMapper.finalize
