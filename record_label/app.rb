

require File.expand_path('../config/application.rb', __FILE__)


get '/' do
  bits = ["<HTML><BODY>"]

  bits << "Hello Record World! <PRE>#{ActiveRecord::Base.connection_config}</PRE>"


  bits << "<DIV>"


  bits << "<DIV>#{Band.joins(:albums).select('bands.id','count(albums.id)','bands.name').group('bands.id').to_sql}</DIV>"

  bits << "<UL>"
  Band.all.joins(:albums).select('bands.id','count(albums.id)','bands.name').
    group('bands.id').
  pluck('bands.id','bands.name','count(albums.id)').each do |row|
      bits << "<LI>#{row[0]} : #{row[1]} : #{row[2]}</LI>"
  end

  bits << "<UL>"



  bits << "</DIV>"

  bits << "</BODY></HTML>"
  bits


end
