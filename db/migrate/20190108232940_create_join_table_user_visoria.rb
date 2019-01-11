class CreateJoinTableUserVisoria < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :visoria do |t|
      t.index [:user_id, :visorium_id]
      t.index [:visorium_id, :user_id]
    end
  end
end
