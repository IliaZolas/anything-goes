class ChangeSavedJobsToSaves < ActiveRecord::Migration[6.0]
  def change
    rename_table :saved_jobs,:saves
  end
end
