class CreateFkVisoriumInformationPersonal < ActiveRecord::Migration[5.2]
  def change
    remove_column :visoria, :information_personals_id
    remove_column :visoria, :user_id
  end
end
