class AddCompletedToJobapp < ActiveRecord::Migration[6.0]
  def change
    add_column :jobapps, :complete, :boolean
  end
end
