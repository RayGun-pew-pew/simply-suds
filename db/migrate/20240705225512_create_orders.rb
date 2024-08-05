class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.boolean :purchased, default: false
      t.boolean :shipped
      t.date :date_shipped

      t.timestamps
    end
  end
end
