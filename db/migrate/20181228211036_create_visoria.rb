class CreateVisoria < ActiveRecord::Migration[5.2]
  def change
    create_table :visoria do |t|
      t.date :date
      t.text :place
      t.time :schedule
      t.text :club
      t.text :description
      t.text :category

      t.timestamps
    end
  end
end
