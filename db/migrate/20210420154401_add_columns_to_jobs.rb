class AddColumnsToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :job_title, :string
    add_column :jobs, :job_description, :string
    add_column :jobs, :job_price, :integer
  end
end
