class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :facebook_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date_of_birth
      t.boolean :parental_permission
      t.string :gender
      t.string :country
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :address_4
      t.boolean :rb_optin
      t.boolean :durex_optin

      t.timestamps
    end
  end
end
