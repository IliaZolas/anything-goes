class CreateDeclinedJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :declined_jobs do |t|
      t.references :jobapp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
