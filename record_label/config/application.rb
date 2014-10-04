#config/application.rb

require 'sinatra'
require "sinatra/activerecord"
require 'haml'

APP_ROOT = File.expand_path('../..', __FILE__)

set :root, APP_ROOT

puts "Loading Record Label App in APP_ROOT=#{APP_ROOT}"

set :database, {adapter: "sqlite3", database: "db/development.sqlite3"}

require  APP_ROOT + '/models/concerns/searchable.rb'

Dir[APP_ROOT + "/models/*.rb"].each do |model_file|
  require model_file
end



