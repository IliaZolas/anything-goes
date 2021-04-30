class AddFieldsToJobapp < ActiveRecord::Migration[6.0]
  def change
    add_column :jobapps, :message, :text
  end
end
