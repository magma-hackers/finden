class CreateFkUserVisorium < ActiveRecord::Migration[5.2]
  def change
    add_reference :visoria, :user, index: true, foreign_key: true
  end
end
