class AddLongToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :job_long_description, :string
  end
end
