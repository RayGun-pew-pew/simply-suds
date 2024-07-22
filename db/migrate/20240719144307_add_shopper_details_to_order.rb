class AddShopperDetailsToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :address_line_1, :string
    add_column :orders, :address_line_2, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :zipcode, :string
    add_column :orders, :email_address, :string
  end
end
