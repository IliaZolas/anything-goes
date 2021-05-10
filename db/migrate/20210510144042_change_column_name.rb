class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :jobapps, :accepted?, :accepted
  end
end
