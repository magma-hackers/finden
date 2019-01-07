class Viewer < ApplicationRecord
  validates :name, :last_name, :birth, :telephone, :club, presence: true	
end
