# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_24_145809) do
  create_table "book_payments", force: :cascade do |t|
    t.string "payment_proof"
    t.boolean "is_valid_payment"
    t.integer "book_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "ebook"
    t.string "audiobook"
    t.float "price"
    t.string "cover"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "date_mentors", force: :cascade do |t|
    t.string "date"
    t.integer "mentor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.float "price_mentor"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_mentors", force: :cascade do |t|
    t.string "payment_proof"
    t.boolean "is_valid_payment"
    t.integer "mentor_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "address"
    t.string "email"
    t.string "password"
    t.string "name"
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_payments", "books"
  add_foreign_key "book_payments", "users"
  add_foreign_key "books", "categories"
  add_foreign_key "date_mentors", "mentors"
  add_foreign_key "mentors", "books"
  add_foreign_key "mentors", "users"
  add_foreign_key "payment_mentors", "mentors"
  add_foreign_key "payment_mentors", "users"
  add_foreign_key "users", "roles"
end
