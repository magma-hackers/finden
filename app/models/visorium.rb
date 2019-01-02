class Visorium < ApplicationRecord
  validates :date, :place, :schedule, :club, :description, :category, presence: true	
end
