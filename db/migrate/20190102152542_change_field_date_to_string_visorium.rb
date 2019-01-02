class ChangeFieldDateToStringVisorium < ActiveRecord::Migration[5.2]
  def change
   change_column :visoria, :schedule, :string
  end
end
