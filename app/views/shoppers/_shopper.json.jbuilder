json.extract! shopper, :id, :first_name, :last_name, :city, :state, :address_line_1, :address_line_2, :zip_code, :email_address, :phone_number, :created_at, :updated_at
json.url shopper_url(shopper, format: :json)
