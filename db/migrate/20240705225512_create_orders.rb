class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :shopper, null: false, foreign_key: true
      t.boolean :purchased
      t.boolean :shipped
      t.date :date_shipped

      t.timestamps
    end
  end
end
