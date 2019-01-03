class Contractual < ApplicationRecord
  validates :player_type, :agent, :nui, presence: true
end
