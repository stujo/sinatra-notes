require 'sinatra'
require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "db/development.sqlite3"}

get '/hi' do
  "Hello Record World! #{settings.database}"
end

