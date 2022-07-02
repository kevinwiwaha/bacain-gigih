class CreateMentors < ActiveRecord::Migration[7.0]
  def change
    create_table :mentors do |t|
      t.float :price_mentor
      t.integer "user_id", null: false
      t.integer "book_id", null: false

      t.timestamps
    end
  add_foreign_key :mentors, :users
  add_foreign_key :mentors, :books
  end
end
