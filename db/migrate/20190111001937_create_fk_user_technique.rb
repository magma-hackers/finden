class CreateFkUserTechnique < ActiveRecord::Migration[5.2]
  def change
    add_reference :techniques, :user, index: true, foreign_key: true
  end
end
