class CreatePaymentMentors < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_mentors do |t|
      t.string :payment_proof
      t.boolean :is_valid_payment
      t.integer "mentor_id", null: false
      t.integer "user_id", null: false

      t.timestamps
    end
  add_foreign_key :payment_mentors, :mentors
  add_foreign_key :payment_mentors, :users
  end
end
