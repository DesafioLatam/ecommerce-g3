class AddCarToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :cart, foreign_key: true
  end
end
