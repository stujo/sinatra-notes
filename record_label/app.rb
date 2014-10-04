

require File.expand_path('../config/application.rb', __FILE__)


get '/' do

  relation = Band.joins(:albums).group('bands.id').order('count(albums.id) ASC')

  @sql = relation.to_sql
  @rows = relation.pluck('bands.id','bands.name','count(albums.id)')
  
  haml :index


end
