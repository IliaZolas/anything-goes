class AddColumnToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :photo, :string
  end
end
