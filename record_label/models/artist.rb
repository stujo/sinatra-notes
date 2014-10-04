class Artist < ActiveRecord::Base
  has_many :super_fans, inverse_of: :artist
  has_many :current_stints, -> { where(end_date: nil) }, class_name: 'Stint'
  has_many :past_stints, -> { where.not(end_date: nil) }, class_name: 'Stint'
  has_many :stints
  has_many :bands, through: :stints
  has_many :current_bands, through: :current_stints, class_name: 'Band', :source => :band
  has_many :past_bands, through: :past_stints, class_name: 'Band', :source => :band
end
