require "sinatra/activerecord/rake"
require "./app"

desc "Start Console"
task :console do
  puts "Loading App in console..."
  require 'irb'
  require 'irb/completion'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  ARGV.clear
  IRB.start
end
