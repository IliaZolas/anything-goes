class AddLocationToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :job_location, :string
  end
end
