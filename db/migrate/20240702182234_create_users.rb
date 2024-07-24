class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
