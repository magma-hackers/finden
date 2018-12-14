class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :principal_position
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
