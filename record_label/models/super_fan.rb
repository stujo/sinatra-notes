class SuperFan < ActiveRecord::Base
  belongs_to :artist, inverse_of: :super_fans
  def full_name
    "#{first_name} #{last_name}"
  end
end
