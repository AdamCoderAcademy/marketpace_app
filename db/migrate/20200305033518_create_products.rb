class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :quantity
      t.decimal :price, precision: 8, scale: 2
      t.string :farm

      t.timestamps
    end
  end
end
