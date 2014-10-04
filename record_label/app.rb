

require File.expand_path('../config/application.rb', __FILE__)


get '/hi' do
  "Hello Record World! #{ActiveRecord::Base.connection_config}"
end
