class CreateFkUserVisoria < ActiveRecord::Migration[5.2]
  def change
    add_reference :viewers, :user, index: true, foreign_key: true
  end
end
