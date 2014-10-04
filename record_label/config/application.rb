#config/application.rb

require 'sinatra'
require "sinatra/activerecord"
require 'sinatra/assetpack'
require 'haml'

APP_ROOT = File.expand_path('../..', __FILE__)

set :root, APP_ROOT

puts "Loading Record Label App in APP_ROOT=#{APP_ROOT}"

set :database, {adapter: "sqlite3", database: "db/development.sqlite3"}

require  APP_ROOT + '/models/concerns/searchable.rb'

Dir[APP_ROOT + "/models/*.rb"].each do |model_file|
  require model_file
end

assets {
  serve '/assets',     from: 'assets'

  # The second parameter defines where the compressed version will be served.
  # (Note: that parameter is optional, AssetPack will figure it out.)
  js :app_header, '/js/app_header.js', [
    '/assets/vendor/foundation-5.4.5/js/vendor/modernizr.js',
  ]

  js :app_footer, '/js/app_footer.js', [
    '/assets/vendor/foundation-5.4.5/js/vendor/jquery.js',
    '/assets/vendor/foundation-5.4.5/js/foundation.min.js',
  ]

  css :application, '/css/application.css', [
    '/assets/vendor/foundation-5.4.5/css/foundation.min.css',
    '/assets/css/style.css'
  ]

  js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
  css_compression :simple   # :simple | :sass | :yui | :sqwish
}


