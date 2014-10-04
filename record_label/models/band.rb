class Band < ActiveRecord::Base
  belongs_to :agent, inverse_of: :bands
  has_many :tracks
  has_many :albums, through: :tracks
  has_many :stints
  has_many :artists, through: :stints


  # Support for autocomplete agent selection
  # based on:
  # http://railscasts.com/episodes/102-auto-complete-association-revised
  def agent_name
    agent.try(:full_name)
  end

  def agent_name=(full_name)
    if full_name.present?
      bits = full_name.gsub(/\s+/, " ").partition(" ")
      if bits[0].present? && bits[2].present?
        candidate = Agent.find_or_create_by({first_name: bits[0], last_name: bits[2]})
        self.agent = candidate
      end
    end
  end
end
