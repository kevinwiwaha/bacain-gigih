class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :address
      t.string :email
      t.string :password
      t.string :name
      t.integer "role_id", null: false

      t.timestamps
    end
  add_foreign_key :users, :roles 
  end
end
