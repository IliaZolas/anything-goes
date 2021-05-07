class AddColumnToJobapp < ActiveRecord::Migration[6.0]
  def change
    add_reference :accepted_jobs, :jobapp, null: false, foreign_key: true
  end
end
