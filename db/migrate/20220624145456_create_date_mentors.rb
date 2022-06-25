class CreateDateMentors < ActiveRecord::Migration[7.0]
  def change
    create_table :date_mentors do |t|
      t.string :date
      t.integer "mentor_id", null: false

      t.timestamps
    end
  add_foreign_key :date_mentors, :mentors
  end
end
