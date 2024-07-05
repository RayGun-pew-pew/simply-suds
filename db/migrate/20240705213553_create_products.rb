class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :stock
      t.integer :size
      t.string :size_measurment
      t.string :sku
      t.boolean :is_active
      t.boolean :on_sale
      t.references :catagory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
