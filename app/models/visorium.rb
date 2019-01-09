class Visorium < ApplicationRecord
  has_and_belongs_to_many :users
  validates :date, :place, :schedule, :club, :description, :category, presence: true	
end
