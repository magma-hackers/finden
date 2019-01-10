class CreateInformationPersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :information_personals do |t|
      t.string :name
      t.text :birth_place
      t.date :born_date
      t.integer :weight
      t.integer :height
      t.string :gender
      t.string :club

      t.timestamps
    end
    add_reference :information_personals, :user, foreign_key: true

  end
end
