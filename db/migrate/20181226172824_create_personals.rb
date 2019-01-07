class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :state
      t.string :city
      t.string :nationality
      t.date :date
      t.string :gender
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
