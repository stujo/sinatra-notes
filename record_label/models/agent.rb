class Agent < ActiveRecord::Base
  has_many :bands, inverse_of: :agent

  extend  RecordLabel::Searchable
  self.searchable_attributes=[:first_name, :last_name]

  def full_name
    "#{first_name} #{last_name}"
  end
end
