class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :sku
      t.integer :price, null: false
      t.boolean :is_active, default: false, null: false
      t.integer :size
      t.string :size_measurment
      t.integer :stock, default: 0, null: false
      t.boolean :on_sale, default: false, null: false

      t.timestamps
    end
  end
end
