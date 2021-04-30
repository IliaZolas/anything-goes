class CreateJobapps < ActiveRecord::Migration[6.0]
  def change
    create_table :jobapps do |t|

      t.timestamps
    end
  end
end
