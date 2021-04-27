class CreateSavedJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_jobs do |t|

      t.timestamps
    end
  end
end
