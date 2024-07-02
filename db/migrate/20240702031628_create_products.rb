class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.text :description
      t.integer :price, default: 100
      t.integer :stock, default: 1
      t.boolean :is_active, default: false
      
      t.timestamps
    end
  end
end
