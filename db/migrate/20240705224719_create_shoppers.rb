class CreateShoppers < ActiveRecord::Migration[7.1]
  def change
    create_table :shoppers do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :address_line_1
      t.string :address_line_2
      t.string :zip_code
      t.string :email_address
      t.string :phone_number

      t.timestamps
    end
  end
end
