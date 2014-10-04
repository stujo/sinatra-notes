class Track < ActiveRecord::Base
  belongs_to :band, inverse_of: :tracks
  has_and_belongs_to_many :albums

  # Support for autocomplete band selection
  # based on:
  # http://railscasts.com/episodes/102-auto-complete-association-revised
  def band_name
    self.band.try(:name)
  end

  def band_name=(name)
    if name.present?
      candidate = Band.where({name: name}).first
      self.band = candidate
    end
  end  
end
