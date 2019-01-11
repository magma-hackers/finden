class CreateFkUserContractual < ActiveRecord::Migration[5.2]
  def change
    add_reference :contractuals, :user, index: true, foreign_key: true
  end
end
