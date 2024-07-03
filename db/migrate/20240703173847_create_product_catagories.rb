class CreateProductCatagories < ActiveRecord::Migration[7.1]
  def change
    create_table :product_catagories do |t|
      t.references :product, null: false, foreign_key: true
      t.references :catagory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
