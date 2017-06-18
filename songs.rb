require 'dm-core'
require 'dm-migrations'
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/songs.db")

class Song
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :duration, String
  property :release_date, Date
end

DataMapper.finalize.auto_upgrade!
