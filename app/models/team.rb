class Team < ApplicationRecord
   validates :name, :principal_position, :start_date, :end_date, presence: true	
end
