class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :total
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
