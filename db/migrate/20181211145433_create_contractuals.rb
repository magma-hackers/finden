class CreateContractuals < ActiveRecord::Migration[5.2]
  def change
    create_table :contractuals do |t|
      t.string :player_type
      t.string :agent
      t.string :nui

      t.timestamps
    end
  end
end
