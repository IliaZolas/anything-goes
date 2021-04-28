class ChangeSavedJobsToUserJobs < ActiveRecord::Migration[6.0]
  def change
    rename_table :saved_jobs, :user_jobs
  end
end
