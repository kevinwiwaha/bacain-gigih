class CreateBookPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :book_payments do |t|
      t.string :payment_proof
      t.boolean :is_valid_payment
      t.integer "book_id", null:false
      t.integer "user_id", null:false

      t.timestamps
    end
  add_foreign_key :book_payments, :books
  add_foreign_key :book_payments, :users
  end
end
