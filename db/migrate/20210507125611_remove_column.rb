class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :accepted_jobs, :user_id
    remove_column :accepted_jobs, :job_id
  end
end
