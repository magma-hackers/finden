class CreateFkUserTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :user, index: true, foreign_key: true
  end
end
