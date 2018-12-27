class CreateTechniques < ActiveRecord::Migration[5.2]
  def change
    create_table :techniques do |t|
      t.string :principal_position
      t.string :secondary_position
      t.string :strong_foot

      t.timestamps
    end
  end
end
