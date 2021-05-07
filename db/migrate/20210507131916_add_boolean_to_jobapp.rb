class AddBooleanToJobapp < ActiveRecord::Migration[6.0]
  def change
    add_column :jobapps, :accepted?, :boolean
  end
end
