class CreateViewers < ActiveRecord::Migration[5.2]
  def change
    create_table :viewers do |t|
      t.string :name
      t.string :last_name
      t.date :birth
      t.integer :telephone
      t.string :club

      t.timestamps
    end
  end
end
