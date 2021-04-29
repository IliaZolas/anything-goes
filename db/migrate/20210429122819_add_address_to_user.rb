class AddAddressToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_address, :string
  end
end
