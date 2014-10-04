class Stint < ActiveRecord::Base
  belongs_to :band, inverse_of: :stints
  belongs_to :artist, inverse_of: :stints
end
