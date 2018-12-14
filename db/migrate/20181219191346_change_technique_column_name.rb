class ChangeTechniqueColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :techniques, :principal_position, :principal_position
  end
end
