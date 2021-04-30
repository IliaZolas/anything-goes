class AddReferencesToJobapp < ActiveRecord::Migration[6.0]
  def change
    add_reference :jobapps, :user, null: false, foreign_key: true
    add_reference :jobapps, :job, null: false, foreign_key: true
  end
end
