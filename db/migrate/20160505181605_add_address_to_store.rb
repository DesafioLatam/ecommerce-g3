class AddAddressToStore < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :address, :string
  end
end
