

require File.expand_path('../config/application.rb', __FILE__)


get '/' do

  query = Band.joins(:albums).group('bands.id').order('count(albums.id) ASC')

  @sql = query.to_sql
  @rows = query.pluck('bands.id','bands.name','count(albums.id)')
  
  haml :index


end
