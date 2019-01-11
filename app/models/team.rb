class Team < ApplicationRecord
   belongs_to :user
   validates :name, :principal_position, :start_date, :end_date, presence: true	
end
