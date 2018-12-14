class Technique < ApplicationRecord
  validates :principal_position, :secondary_position, :strong_foot, presence: true
end
