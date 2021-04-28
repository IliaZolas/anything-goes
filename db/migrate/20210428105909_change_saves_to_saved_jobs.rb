class ChangeSavesToSavedJobs < ActiveRecord::Migration[6.0]
  def change
    rename_table :saves, :saved_jobs
  end
end
