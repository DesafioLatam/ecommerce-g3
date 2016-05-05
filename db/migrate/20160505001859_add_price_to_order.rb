class AddPriceToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :price, :integer
  end
end
