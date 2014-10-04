class Album < ActiveRecord::Base
  has_and_belongs_to_many :tracks
  has_many :bands, through: :tracks


  def total_seconds
    tracks.sum(:seconds)
  end
end
