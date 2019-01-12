class RemoveFkVisoriumUsers < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :visoria, :users
  end
end
