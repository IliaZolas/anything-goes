class AddColumnsToSavedJobs < ActiveRecord::Migration[6.0]
  def change
    add_reference :saved_jobs, :user, null: false, foreign_key: true
    add_reference :saved_jobs, :job, null: false, foreign_key: true
  end
end
