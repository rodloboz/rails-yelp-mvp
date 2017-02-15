class RemovePhoneFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :phone, :string
    add_column :restaurants, :phone_number, :string
  end
end
